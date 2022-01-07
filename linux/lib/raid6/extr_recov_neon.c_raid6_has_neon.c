
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_has_neon () ;

__attribute__((used)) static int raid6_has_neon(void)
{
 return cpu_has_neon();
}
