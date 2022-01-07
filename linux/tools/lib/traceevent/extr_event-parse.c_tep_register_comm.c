
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int _tep_register_comm (struct tep_handle*,char const*,int,int) ;

int tep_register_comm(struct tep_handle *tep, const char *comm, int pid)
{
 return _tep_register_comm(tep, comm, pid, 0);
}
