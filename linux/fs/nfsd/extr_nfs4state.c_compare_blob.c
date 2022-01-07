
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {scalar_t__ len; int data; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
compare_blob(const struct xdr_netobj *o1, const struct xdr_netobj *o2)
{
 if (o1->len < o2->len)
  return -1;
 if (o1->len > o2->len)
  return 1;
 return memcmp(o1->data, o2->data, o1->len);
}
