
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int SYSLOG_ACTION_OPEN ;
 int SYSLOG_FROM_PROC ;
 int do_syslog (int ,int *,int ,int ) ;

__attribute__((used)) static int kmsg_open(struct inode * inode, struct file * file)
{
 return do_syslog(SYSLOG_ACTION_OPEN, ((void*)0), 0, SYSLOG_FROM_PROC);
}
