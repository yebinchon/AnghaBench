
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;

__attribute__((used)) static inline void cpuidle_exit(int fail)
{
 exit(EXIT_FAILURE);
}
