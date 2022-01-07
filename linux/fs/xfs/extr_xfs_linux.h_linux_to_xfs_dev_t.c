
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dev_t ;
typedef int dev_t ;


 int sysv_encode_dev (int ) ;

__attribute__((used)) static inline xfs_dev_t linux_to_xfs_dev_t(dev_t dev)
{
 return sysv_encode_dev(dev);
}
