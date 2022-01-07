
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;
struct net {int dummy; } ;




 int RPCBIND_MAXUADDRLEN ;
 void* htons (unsigned short) ;
 scalar_t__ kstrtou8 (char*,int,int*) ;
 int memcpy (char*,char const*,size_t const) ;
 scalar_t__ rpc_pton (struct net*,char*,int ,struct sockaddr*,size_t const) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ unlikely (int) ;

size_t rpc_uaddr2sockaddr(struct net *net, const char *uaddr,
     const size_t uaddr_len, struct sockaddr *sap,
     const size_t salen)
{
 char *c, buf[RPCBIND_MAXUADDRLEN + sizeof('\0')];
 u8 portlo, porthi;
 unsigned short port;

 if (uaddr_len > RPCBIND_MAXUADDRLEN)
  return 0;

 memcpy(buf, uaddr, uaddr_len);

 buf[uaddr_len] = '\0';
 c = strrchr(buf, '.');
 if (unlikely(c == ((void*)0)))
  return 0;
 if (unlikely(kstrtou8(c + 1, 10, &portlo) != 0))
  return 0;

 *c = '\0';
 c = strrchr(buf, '.');
 if (unlikely(c == ((void*)0)))
  return 0;
 if (unlikely(kstrtou8(c + 1, 10, &porthi) != 0))
  return 0;

 port = (unsigned short)((porthi << 8) | portlo);

 *c = '\0';
 if (rpc_pton(net, buf, strlen(buf), sap, salen) == 0)
  return 0;

 switch (sap->sa_family) {
 case 129:
  ((struct sockaddr_in *)sap)->sin_port = htons(port);
  return sizeof(struct sockaddr_in);
 case 128:
  ((struct sockaddr_in6 *)sap)->sin6_port = htons(port);
  return sizeof(struct sockaddr_in6);
 }

 return 0;
}
