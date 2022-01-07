
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {int count; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 struct nsproxy* kmem_cache_alloc (int ,int ) ;
 int nsproxy_cachep ;

__attribute__((used)) static inline struct nsproxy *create_nsproxy(void)
{
 struct nsproxy *nsproxy;

 nsproxy = kmem_cache_alloc(nsproxy_cachep, GFP_KERNEL);
 if (nsproxy)
  atomic_set(&nsproxy->count, 1);
 return nsproxy;
}
