
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 char* find_cmdline (struct tep_handle*,int) ;

const char *tep_data_comm_from_pid(struct tep_handle *tep, int pid)
{
 const char *comm;

 comm = find_cmdline(tep, pid);
 return comm;
}
