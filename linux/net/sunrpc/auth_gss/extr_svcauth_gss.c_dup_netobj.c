
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; int data; } ;


 int dup_to_netobj (struct xdr_netobj*,int ,int ) ;

__attribute__((used)) static inline int dup_netobj(struct xdr_netobj *dst, struct xdr_netobj *src)
{
 return dup_to_netobj(dst, src->data, src->len);
}
