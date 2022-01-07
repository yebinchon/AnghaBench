
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kstat {int rdev; int mode; } ;


 int S_ISBLK (int ) ;
 scalar_t__ vfs_stat (char*,struct kstat*) ;

__attribute__((used)) static inline u32 bstat(char *name)
{
 struct kstat stat;
 if (vfs_stat(name, &stat) != 0)
  return 0;
 if (!S_ISBLK(stat.mode))
  return 0;
 return stat.rdev;
}
