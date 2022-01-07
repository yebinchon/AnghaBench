
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;


 struct strlist* __probe_file__get_namelist (int,int) ;

struct strlist *probe_file__get_namelist(int fd)
{
 return __probe_file__get_namelist(fd, 0);
}
