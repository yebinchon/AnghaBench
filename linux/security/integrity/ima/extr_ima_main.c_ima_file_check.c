
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;


 int FILE_CHECK ;
 int MAY_APPEND ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int current ;
 int current_cred () ;
 int process_measurement (struct file*,int ,int ,int *,int ,int,int ) ;
 int security_task_getsecid (int ,int *) ;

int ima_file_check(struct file *file, int mask)
{
 u32 secid;

 security_task_getsecid(current, &secid);
 return process_measurement(file, current_cred(), secid, ((void*)0), 0,
       mask & (MAY_READ | MAY_WRITE | MAY_EXEC |
        MAY_APPEND), FILE_CHECK);
}
