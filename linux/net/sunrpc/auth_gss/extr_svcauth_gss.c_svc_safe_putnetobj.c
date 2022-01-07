
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xdr_netobj {int len; int data; } ;
struct kvec {scalar_t__ iov_len; int * iov_base; } ;


 scalar_t__ PAGE_SIZE ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int round_up_to_quad (int) ;
 int svc_putnl (struct kvec*,int) ;

__attribute__((used)) static inline int
svc_safe_putnetobj(struct kvec *resv, struct xdr_netobj *o)
{
 u8 *p;

 if (resv->iov_len + 4 > PAGE_SIZE)
  return -1;
 svc_putnl(resv, o->len);
 p = resv->iov_base + resv->iov_len;
 resv->iov_len += round_up_to_quad(o->len);
 if (resv->iov_len > PAGE_SIZE)
  return -1;
 memcpy(p, o->data, o->len);
 memset(p + o->len, 0, round_up_to_quad(o->len) - o->len);
 return 0;
}
