
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pid {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct pid* pid; } ;


 TYPE_1__* PROC_I (struct inode const*) ;

__attribute__((used)) static inline struct pid *proc_pid(const struct inode *inode)
{
 return PROC_I(inode)->pid;
}
