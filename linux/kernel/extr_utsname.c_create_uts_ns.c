
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uts_namespace {int kref; } ;


 int GFP_KERNEL ;
 struct uts_namespace* kmem_cache_alloc (int ,int ) ;
 int kref_init (int *) ;
 int uts_ns_cache ;

__attribute__((used)) static struct uts_namespace *create_uts_ns(void)
{
 struct uts_namespace *uts_ns;

 uts_ns = kmem_cache_alloc(uts_ns_cache, GFP_KERNEL);
 if (uts_ns)
  kref_init(&uts_ns->kref);
 return uts_ns;
}
