
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_proxy {int count; } ;


 int aa_proxy_kref ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void aa_put_proxy(struct aa_proxy *proxy)
{
 if (proxy)
  kref_put(&proxy->count, aa_proxy_kref);
}
