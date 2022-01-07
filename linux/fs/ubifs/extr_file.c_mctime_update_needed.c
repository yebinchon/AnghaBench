
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct inode {int i_ctime; int i_mtime; } ;


 int timespec64_equal (int *,struct timespec64 const*) ;

__attribute__((used)) static inline int mctime_update_needed(const struct inode *inode,
           const struct timespec64 *now)
{
 if (!timespec64_equal(&inode->i_mtime, now) ||
     !timespec64_equal(&inode->i_ctime, now))
  return 1;
 return 0;
}
