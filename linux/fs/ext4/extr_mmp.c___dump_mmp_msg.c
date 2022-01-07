
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct mmp_struct {int mmp_bdevname; int mmp_nodename; int mmp_time; } ;


 int __ext4_warning (struct super_block*,char const*,unsigned int,char*,...) ;
 scalar_t__ le64_to_cpu (int ) ;

void __dump_mmp_msg(struct super_block *sb, struct mmp_struct *mmp,
      const char *function, unsigned int line, const char *msg)
{
 __ext4_warning(sb, function, line, "%s", msg);
 __ext4_warning(sb, function, line,
         "MMP failure info: last update time: %llu, last update "
         "node: %s, last update device: %s",
         (long long unsigned int) le64_to_cpu(mmp->mmp_time),
         mmp->mmp_nodename, mmp->mmp_bdevname);
}
