
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t TOMOYO_MEMORY_POLICY ;
 int kfree (void*) ;
 scalar_t__ ksize (void*) ;
 int * tomoyo_memory_used ;

__attribute__((used)) static inline void tomoyo_memory_free(void *ptr)
{
 tomoyo_memory_used[TOMOYO_MEMORY_POLICY] -= ksize(ptr);
 kfree(ptr);
}
