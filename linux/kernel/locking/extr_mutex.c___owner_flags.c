
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MUTEX_FLAGS ;

__attribute__((used)) static inline unsigned long __owner_flags(unsigned long owner)
{
 return owner & MUTEX_FLAGS;
}
