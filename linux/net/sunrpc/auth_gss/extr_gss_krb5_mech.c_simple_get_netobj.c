
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {unsigned int len; int * data; } ;
typedef int len ;


 int EFAULT ;
 int ENOMEM ;
 void const* ERR_PTR (int ) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (void const*) ;
 int * kmemdup (void const*,unsigned int,int ) ;
 void* simple_get_bytes (void const*,void const*,unsigned int*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const void *
simple_get_netobj(const void *p, const void *end, struct xdr_netobj *res)
{
 const void *q;
 unsigned int len;

 p = simple_get_bytes(p, end, &len, sizeof(len));
 if (IS_ERR(p))
  return p;
 q = (const void *)((const char *)p + len);
 if (unlikely(q > end || q < p))
  return ERR_PTR(-EFAULT);
 res->data = kmemdup(p, len, GFP_NOFS);
 if (unlikely(res->data == ((void*)0)))
  return ERR_PTR(-ENOMEM);
 res->len = len;
 return q;
}
