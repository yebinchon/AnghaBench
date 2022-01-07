
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_open_file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int private; } ;


 int css_to_devcgroup (int ) ;
 int devcgroup_mutex ;
 int devcgroup_update_access (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* of_cft (struct kernfs_open_file*) ;
 int of_css (struct kernfs_open_file*) ;
 int strstrip (char*) ;

__attribute__((used)) static ssize_t devcgroup_access_write(struct kernfs_open_file *of,
          char *buf, size_t nbytes, loff_t off)
{
 int retval;

 mutex_lock(&devcgroup_mutex);
 retval = devcgroup_update_access(css_to_devcgroup(of_css(of)),
      of_cft(of)->private, strstrip(buf));
 mutex_unlock(&devcgroup_mutex);
 return retval ?: nbytes;
}
