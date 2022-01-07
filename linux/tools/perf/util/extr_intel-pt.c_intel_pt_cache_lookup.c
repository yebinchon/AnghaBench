
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct machine {int dummy; } ;
struct intel_pt_cache_entry {int dummy; } ;
struct dso {int auxtrace_cache; } ;
struct auxtrace_cache {int dummy; } ;


 struct intel_pt_cache_entry* auxtrace_cache__lookup (int ,int ) ;
 struct auxtrace_cache* intel_pt_cache (struct dso*,struct machine*) ;

__attribute__((used)) static struct intel_pt_cache_entry *
intel_pt_cache_lookup(struct dso *dso, struct machine *machine, u64 offset)
{
 struct auxtrace_cache *c = intel_pt_cache(dso, machine);

 if (!c)
  return ((void*)0);

 return auxtrace_cache__lookup(dso->auxtrace_cache, offset);
}
