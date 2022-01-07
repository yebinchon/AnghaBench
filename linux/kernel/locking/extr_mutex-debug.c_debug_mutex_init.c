
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {struct mutex* magic; int dep_map; } ;
struct lock_class_key {int dummy; } ;


 int debug_check_no_locks_freed (void*,int) ;
 int lockdep_init_map (int *,char const*,struct lock_class_key*,int ) ;

void debug_mutex_init(struct mutex *lock, const char *name,
        struct lock_class_key *key)
{







 lock->magic = lock;
}
