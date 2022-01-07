
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_hz ;
 int tsc_hz ;
 int tsc_tweak ;

__attribute__((used)) static void
calculate_tsc_tweak()
{
 tsc_tweak = base_hz / tsc_hz;
}
