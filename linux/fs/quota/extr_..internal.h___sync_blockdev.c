
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;



__attribute__((used)) static inline int __sync_blockdev(struct block_device *bdev, int wait)
{
 return 0;
}
