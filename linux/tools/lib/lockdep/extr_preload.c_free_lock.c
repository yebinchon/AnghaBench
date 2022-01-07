
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_lookup {int dummy; } ;


 int free (struct lock_lookup*) ;
 int is_static_lock (struct lock_lookup*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline void free_lock(struct lock_lookup *lock)
{
 if (likely(!is_static_lock(lock)))
  free(lock);
}
