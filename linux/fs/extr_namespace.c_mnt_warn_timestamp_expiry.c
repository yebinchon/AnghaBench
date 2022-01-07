
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {struct super_block* mnt_sb; } ;
struct tm {scalar_t__ tm_year; } ;
struct super_block {scalar_t__ s_time_max; TYPE_1__* s_type; } ;
struct path {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ TIME_UPTIME_SEC_MAX ;
 scalar_t__ __get_free_page (int ) ;
 int __mnt_is_readonly (struct vfsmount*) ;
 char* d_path (struct path*,char*,int ) ;
 int free_page (unsigned long) ;
 scalar_t__ ktime_get_real_seconds () ;
 int pr_warn (char*,int ,char*,scalar_t__,unsigned long long) ;
 int time64_to_tm (scalar_t__,int ,struct tm*) ;

__attribute__((used)) static void mnt_warn_timestamp_expiry(struct path *mountpoint, struct vfsmount *mnt)
{
 struct super_block *sb = mnt->mnt_sb;

 if (!__mnt_is_readonly(mnt) &&
    (ktime_get_real_seconds() + TIME_UPTIME_SEC_MAX > sb->s_time_max)) {
  char *buf = (char *)__get_free_page(GFP_KERNEL);
  char *mntpath = buf ? d_path(mountpoint, buf, PAGE_SIZE) : ERR_PTR(-ENOMEM);
  struct tm tm;

  time64_to_tm(sb->s_time_max, 0, &tm);

  pr_warn("Mounted %s file system at %s supports timestamps until %04ld (0x%llx)\n",
   sb->s_type->name, mntpath,
   tm.tm_year+1900, (unsigned long long)sb->s_time_max);

  free_page((unsigned long)buf);
 }
}
