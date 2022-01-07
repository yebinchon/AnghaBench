
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int event_trigger_regex_open (struct inode*,struct file*) ;

__attribute__((used)) static int
event_trigger_open(struct inode *inode, struct file *filp)
{

 return event_trigger_regex_open(inode, filp);
}
