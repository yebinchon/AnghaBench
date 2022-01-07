
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct ext4_sb_info {int s_jquota_fmt; int * s_qf_names; } ;


 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 size_t GRPQUOTA ;



 size_t USRQUOTA ;
 char* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int seq_show_option (struct seq_file*,char*,char*) ;

__attribute__((used)) static inline void ext4_show_quota_options(struct seq_file *seq,
        struct super_block *sb)
{
}
