
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct inode {int dummy; } ;


 int EIO ;

__attribute__((used)) static int bad_inode_update_time(struct inode *inode, struct timespec64 *time,
     int flags)
{
 return -EIO;
}
