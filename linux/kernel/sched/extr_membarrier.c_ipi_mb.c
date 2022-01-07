
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_mb () ;

__attribute__((used)) static void ipi_mb(void *info)
{
 smp_mb();
}
