
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;


 int ENOMEM ;
 int PF_FL_RW ;
 int PF_FL_UPROBE ;
 int close (int) ;
 int pr_debug (char*) ;
 struct strlist* probe_file__get_namelist (int) ;
 int probe_file__open (int) ;

__attribute__((used)) static int __open_probe_file_and_namelist(bool uprobe,
       struct strlist **namelist)
{
 int fd;

 fd = probe_file__open(PF_FL_RW | (uprobe ? PF_FL_UPROBE : 0));
 if (fd < 0)
  return fd;


 *namelist = probe_file__get_namelist(fd);
 if (!(*namelist)) {
  pr_debug("Failed to get current event list.\n");
  close(fd);
  return -ENOMEM;
 }
 return fd;
}
