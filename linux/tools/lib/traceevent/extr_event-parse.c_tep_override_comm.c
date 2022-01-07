
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int cmdlines; } ;


 int ENOMEM ;
 int _tep_register_comm (struct tep_handle*,char const*,int,int) ;
 scalar_t__ cmdline_init (struct tep_handle*) ;
 int errno ;

int tep_override_comm(struct tep_handle *tep, const char *comm, int pid)
{
 if (!tep->cmdlines && cmdline_init(tep)) {
  errno = ENOMEM;
  return -1;
 }
 return _tep_register_comm(tep, comm, pid, 1);
}
