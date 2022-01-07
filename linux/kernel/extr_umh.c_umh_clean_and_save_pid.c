
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umh_info {int pid; } ;
struct subprocess_info {int pid; int argv; struct umh_info* data; } ;


 int argv_free (int ) ;

__attribute__((used)) static void umh_clean_and_save_pid(struct subprocess_info *info)
{
 struct umh_info *umh_info = info->data;

 argv_free(info->argv);
 umh_info->pid = info->pid;
}
