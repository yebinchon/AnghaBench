
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kmem_cache {int name; TYPE_1__* cpu_slab; } ;
struct TYPE_2__ {int tid; } ;


 int CMPXCHG_DOUBLE_CPU_FAIL ;
 unsigned long __this_cpu_read (int ) ;
 int next_tid (unsigned long) ;
 int pr_info (char*,char const*,int ) ;
 int pr_warn (char*,unsigned long,unsigned long,...) ;
 int stat (struct kmem_cache const*,int ) ;
 scalar_t__ tid_to_cpu (unsigned long) ;
 scalar_t__ tid_to_event (unsigned long) ;

__attribute__((used)) static inline void note_cmpxchg_failure(const char *n,
  const struct kmem_cache *s, unsigned long tid)
{
 stat(s, CMPXCHG_DOUBLE_CPU_FAIL);
}
