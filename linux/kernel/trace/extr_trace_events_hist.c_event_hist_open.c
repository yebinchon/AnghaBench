
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int LOCKDOWN_TRACEFS ;
 int hist_show ;
 int security_locked_down (int ) ;
 int single_open (struct file*,int ,struct file*) ;

__attribute__((used)) static int event_hist_open(struct inode *inode, struct file *file)
{
 int ret;

 ret = security_locked_down(LOCKDOWN_TRACEFS);
 if (ret)
  return ret;

 return single_open(file, hist_show, file);
}
