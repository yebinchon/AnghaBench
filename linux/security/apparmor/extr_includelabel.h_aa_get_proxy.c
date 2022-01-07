
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_proxy {int count; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct aa_proxy *aa_get_proxy(struct aa_proxy *proxy)
{
 if (proxy)
  kref_get(&(proxy->count));

 return proxy;
}
