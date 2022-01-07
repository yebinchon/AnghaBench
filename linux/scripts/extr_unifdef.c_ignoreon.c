
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t depth ;
 int* ignoring ;

__attribute__((used)) static void
ignoreon(void)
{
 ignoring[depth] = 1;
}
