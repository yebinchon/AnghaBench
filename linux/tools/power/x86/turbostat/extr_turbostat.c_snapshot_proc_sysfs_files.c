
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIC_CPU_LPI ;
 int BIC_GFXMHz ;
 int BIC_GFX_rc6 ;
 int BIC_IRQ ;
 int BIC_SYS_LPI ;
 scalar_t__ DO_BIC (int ) ;
 int snapshot_cpu_lpi_us () ;
 int snapshot_gfx_mhz () ;
 int snapshot_gfx_rc6_ms () ;
 scalar_t__ snapshot_proc_interrupts () ;
 int snapshot_sys_lpi_us () ;

int snapshot_proc_sysfs_files(void)
{
 if (DO_BIC(BIC_IRQ))
  if (snapshot_proc_interrupts())
   return 1;

 if (DO_BIC(BIC_GFX_rc6))
  snapshot_gfx_rc6_ms();

 if (DO_BIC(BIC_GFXMHz))
  snapshot_gfx_mhz();

 if (DO_BIC(BIC_CPU_LPI))
  snapshot_cpu_lpi_us();

 if (DO_BIC(BIC_SYS_LPI))
  snapshot_sys_lpi_us();

 return 0;
}
