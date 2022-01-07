
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;
struct intel_pt_cache_entry {int dummy; } ;
struct dso {struct auxtrace_cache* auxtrace_cache; } ;
struct auxtrace_cache {int dummy; } ;


 struct auxtrace_cache* auxtrace_cache__new (unsigned int,int,int) ;
 unsigned int intel_pt_cache_size (struct dso*,struct machine*) ;

__attribute__((used)) static struct auxtrace_cache *intel_pt_cache(struct dso *dso,
          struct machine *machine)
{
 struct auxtrace_cache *c;
 unsigned int bits;

 if (dso->auxtrace_cache)
  return dso->auxtrace_cache;

 bits = intel_pt_cache_size(dso, machine);


 c = auxtrace_cache__new(bits, sizeof(struct intel_pt_cache_entry), 200);

 dso->auxtrace_cache = c;

 return c;
}
