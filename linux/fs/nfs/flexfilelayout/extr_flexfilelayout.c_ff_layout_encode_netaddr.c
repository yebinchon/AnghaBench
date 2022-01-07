
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;
struct nfs4_pnfs_ds_addr {int da_addr; } ;
typedef int portbuf ;
typedef int addrbuf ;
typedef int __be32 ;




 int RPCBIND_MAXUADDRLEN ;
 int RPCBIND_MAXUADDRPLEN ;
 int WARN_ON_ONCE (int) ;
 int ff_layout_ntop4 (struct sockaddr*,char*,int) ;
 int ff_layout_ntop6_noscopeid (struct sockaddr*,char*,int) ;
 unsigned short ntohs (int ) ;
 int snprintf (char*,int,char*,unsigned short,unsigned short) ;
 int strlcat (char*,char*,int) ;
 int xdr_encode_opaque (int *,char*,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void
ff_layout_encode_netaddr(struct xdr_stream *xdr, struct nfs4_pnfs_ds_addr *da)
{
 struct sockaddr *sap = (struct sockaddr *)&da->da_addr;
 char portbuf[RPCBIND_MAXUADDRPLEN];
 char addrbuf[RPCBIND_MAXUADDRLEN];
 char *netid;
 unsigned short port;
 int len, netid_len;
 __be32 *p;

 switch (sap->sa_family) {
 case 129:
  if (ff_layout_ntop4(sap, addrbuf, sizeof(addrbuf)) == 0)
   return;
  port = ntohs(((struct sockaddr_in *)sap)->sin_port);
  netid = "tcp";
  netid_len = 3;
  break;
 case 128:
  if (ff_layout_ntop6_noscopeid(sap, addrbuf, sizeof(addrbuf)) == 0)
   return;
  port = ntohs(((struct sockaddr_in6 *)sap)->sin6_port);
  netid = "tcp6";
  netid_len = 4;
  break;
 default:

  WARN_ON_ONCE(1);
  return;
 }

 snprintf(portbuf, sizeof(portbuf), ".%u.%u", port >> 8, port & 0xff);
 len = strlcat(addrbuf, portbuf, sizeof(addrbuf));

 p = xdr_reserve_space(xdr, 4 + netid_len);
 xdr_encode_opaque(p, netid, netid_len);

 p = xdr_reserve_space(xdr, 4 + len);
 xdr_encode_opaque(p, addrbuf, len);
}
