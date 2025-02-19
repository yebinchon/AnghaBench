
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct xdr_stream {int dummy; } ;
struct nfsd4_exchange_id {int seqid; int flags; int spa_how; int * spo_must_allow; int * spo_must_enforce; int clientid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;
struct TYPE_2__ {char* nodename; } ;




 int WARN_ON_ONCE (int) ;
 int XDR_QUADLEN (int) ;
 void* cpu_to_be32 (int) ;
 int nfsd4_encode_bitmap (struct xdr_stream*,int ,int ,int ) ;
 int nfserr_resource ;
 int strlen (char*) ;
 TYPE_1__* utsname () ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque (int *,char*,int) ;
 int * xdr_encode_opaque_fixed (int *,int *,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32
nfsd4_encode_exchange_id(struct nfsd4_compoundres *resp, __be32 nfserr,
    struct nfsd4_exchange_id *exid)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;
 char *major_id;
 char *server_scope;
 int major_id_sz;
 int server_scope_sz;
 uint64_t minor_id = 0;

 major_id = utsname()->nodename;
 major_id_sz = strlen(major_id);
 server_scope = utsname()->nodename;
 server_scope_sz = strlen(server_scope);

 p = xdr_reserve_space(xdr,
  8 +
  4 +
  4 +
  4 );
 if (!p)
  return nfserr_resource;

 p = xdr_encode_opaque_fixed(p, &exid->clientid, 8);
 *p++ = cpu_to_be32(exid->seqid);
 *p++ = cpu_to_be32(exid->flags);

 *p++ = cpu_to_be32(exid->spa_how);

 switch (exid->spa_how) {
 case 128:
  break;
 case 129:

  nfserr = nfsd4_encode_bitmap(xdr,
     exid->spo_must_enforce[0],
     exid->spo_must_enforce[1],
     exid->spo_must_enforce[2]);
  if (nfserr)
   return nfserr;

  nfserr = nfsd4_encode_bitmap(xdr,
     exid->spo_must_allow[0],
     exid->spo_must_allow[1],
     exid->spo_must_allow[2]);
  if (nfserr)
   return nfserr;
  break;
 default:
  WARN_ON_ONCE(1);
 }

 p = xdr_reserve_space(xdr,
  8 +
  4 +
  (XDR_QUADLEN(major_id_sz) * 4) +
  4 +
  (XDR_QUADLEN(server_scope_sz) * 4) +
  4 );
 if (!p)
  return nfserr_resource;


 p = xdr_encode_hyper(p, minor_id);

 p = xdr_encode_opaque(p, major_id, major_id_sz);


 p = xdr_encode_opaque(p, server_scope, server_scope_sz);


 *p++ = cpu_to_be32(0);
 return 0;
}
