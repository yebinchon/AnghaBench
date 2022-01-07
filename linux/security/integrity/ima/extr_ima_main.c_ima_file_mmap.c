
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;


 int MAY_EXEC ;
 int MMAP_CHECK ;
 unsigned long PROT_EXEC ;
 int current ;
 int current_cred () ;
 int process_measurement (struct file*,int ,int ,int *,int ,int ,int ) ;
 int security_task_getsecid (int ,int *) ;

int ima_file_mmap(struct file *file, unsigned long prot)
{
 u32 secid;

 if (file && (prot & PROT_EXEC)) {
  security_task_getsecid(current, &secid);
  return process_measurement(file, current_cred(), secid, ((void*)0),
        0, MAY_EXEC, MMAP_CHECK);
 }

 return 0;
}
