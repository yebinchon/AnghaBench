
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int current ;
 int current_cred () ;
 int process_buffer_measurement (void const*,int,char*,int ,int ) ;
 int security_task_getsecid (int ,int *) ;

void ima_kexec_cmdline(const void *buf, int size)
{
 u32 secid;

 if (buf && size != 0) {
  security_task_getsecid(current, &secid);
  process_buffer_measurement(buf, size, "kexec-cmdline",
        current_cred(), secid);
 }
}
