
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int fd; } ;


 TYPE_1__* PROC_I (struct inode*) ;

__attribute__((used)) static inline unsigned int proc_fd(struct inode *inode)
{
 return PROC_I(inode)->fd;
}
