
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dev_t ;
typedef int dev_t ;


 int MKDEV (int,int ) ;
 int sysv_major (int ) ;
 int sysv_minor (int ) ;

__attribute__((used)) static inline dev_t xfs_to_linux_dev_t(xfs_dev_t dev)
{
 return MKDEV(sysv_major(dev) & 0x1ff, sysv_minor(dev));
}
