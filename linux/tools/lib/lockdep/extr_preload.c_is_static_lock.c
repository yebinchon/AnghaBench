
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_lookup {int dummy; } ;


 int ARRAY_SIZE (struct lock_lookup*) ;
 struct lock_lookup* __locks ;

__attribute__((used)) static inline bool is_static_lock(struct lock_lookup *lock)
{
 return lock >= __locks && lock < __locks + ARRAY_SIZE(__locks);
}
