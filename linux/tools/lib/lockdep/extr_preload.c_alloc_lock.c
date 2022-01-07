
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_lookup {int dummy; } ;


 int ARRAY_SIZE (struct lock_lookup*) ;
 int EX_UNAVAILABLE ;
 int STDERR_FILENO ;
 scalar_t__ __init_state ;
 struct lock_lookup* __locks ;
 int __locks_nr ;
 scalar_t__ done ;
 int dprintf (int ,char*) ;
 int exit (int ) ;
 struct lock_lookup* malloc (int) ;

__attribute__((used)) static struct lock_lookup *alloc_lock(void)
{
 if (__init_state != done) {
  int idx = __locks_nr++;
  if (idx >= ARRAY_SIZE(__locks)) {
   dprintf(STDERR_FILENO,
  "LOCKDEP error: insufficient LIBLOCKDEP_STATIC_ENTRIES\n");
   exit(EX_UNAVAILABLE);
  }
  return __locks + idx;
 }

 return malloc(sizeof(struct lock_lookup));
}
