
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int NFSD_MAY_NOT_BREAK_LEASE ;
 int NFSD_MAY_WRITE ;
 unsigned int O_NONBLOCK ;
 unsigned int O_RDONLY ;
 unsigned int O_WRONLY ;
 int break_lease (struct inode*,unsigned int) ;

int nfsd_open_break_lease(struct inode *inode, int access)
{
 unsigned int mode;

 if (access & NFSD_MAY_NOT_BREAK_LEASE)
  return 0;
 mode = (access & NFSD_MAY_WRITE) ? O_WRONLY : O_RDONLY;
 return break_lease(inode, mode | O_NONBLOCK);
}
