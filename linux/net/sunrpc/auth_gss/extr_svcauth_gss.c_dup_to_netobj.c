
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; int * data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmemdup (char*,int,int ) ;

__attribute__((used)) static int dup_to_netobj(struct xdr_netobj *dst, char *src, int len)
{
 dst->len = len;
 dst->data = (len ? kmemdup(src, len, GFP_KERNEL) : ((void*)0));
 if (len && !dst->data)
  return -ENOMEM;
 return 0;
}
