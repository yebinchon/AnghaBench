
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_cdev; } ;


 int RING_BUFFER_ALL_CPUS ;

__attribute__((used)) static inline int tracing_get_cpu(struct inode *inode)
{
 if (inode->i_cdev)
  return (long)inode->i_cdev - 1;
 return RING_BUFFER_ALL_CPUS;
}
