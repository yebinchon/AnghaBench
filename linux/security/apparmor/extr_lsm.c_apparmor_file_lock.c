
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;


 int AA_MAY_LOCK ;
 unsigned int F_WRLCK ;
 int MAY_WRITE ;
 int OP_FLOCK ;
 int common_file_perm (int ,struct file*,int ) ;

__attribute__((used)) static int apparmor_file_lock(struct file *file, unsigned int cmd)
{
 u32 mask = AA_MAY_LOCK;

 if (cmd == F_WRLCK)
  mask |= MAY_WRITE;

 return common_file_perm(OP_FLOCK, file, mask);
}
