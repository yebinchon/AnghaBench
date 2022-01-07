
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_open_file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 int CGROUP_FROZEN ;
 size_t EINVAL ;
 int css_freezer (int ) ;
 int freezer_change_state (int ,int) ;
 int freezer_state_strs (int ) ;
 int of_css (struct kernfs_open_file*) ;
 scalar_t__ strcmp (char*,int ) ;
 char* strstrip (char*) ;

__attribute__((used)) static ssize_t freezer_write(struct kernfs_open_file *of,
        char *buf, size_t nbytes, loff_t off)
{
 bool freeze;

 buf = strstrip(buf);

 if (strcmp(buf, freezer_state_strs(0)) == 0)
  freeze = 0;
 else if (strcmp(buf, freezer_state_strs(CGROUP_FROZEN)) == 0)
  freeze = 1;
 else
  return -EINVAL;

 freezer_change_state(css_freezer(of_css(of)), freeze);
 return nbytes;
}
