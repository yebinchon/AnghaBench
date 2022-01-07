
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {scalar_t__ len; int data; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int netobj_equal(struct xdr_netobj *a, struct xdr_netobj *b)
{
 return a->len == b->len && 0 == memcmp(a->data, b->data, a->len);
}
