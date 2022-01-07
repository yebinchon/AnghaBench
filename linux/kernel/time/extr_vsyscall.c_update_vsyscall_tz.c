
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdso_data {int tz_dsttime; int tz_minuteswest; } ;
struct TYPE_2__ {int tz_dsttime; int tz_minuteswest; } ;


 size_t CS_HRES_COARSE ;
 struct vdso_data* __arch_get_k_vdso_data () ;
 int __arch_sync_vdso_data (struct vdso_data*) ;
 TYPE_1__ sys_tz ;

void update_vsyscall_tz(void)
{
 struct vdso_data *vdata = __arch_get_k_vdso_data();

 vdata[CS_HRES_COARSE].tz_minuteswest = sys_tz.tz_minuteswest;
 vdata[CS_HRES_COARSE].tz_dsttime = sys_tz.tz_dsttime;

 __arch_sync_vdso_data(vdata);
}
