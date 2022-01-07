
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quota_info {TYPE_1__** ops; } ;
struct TYPE_2__ {int (* write_file_info ) (struct super_block*,int) ;} ;


 struct quota_info* sb_dqopt (struct super_block*) ;
 int stub1 (struct super_block*,int) ;

int dquot_commit_info(struct super_block *sb, int type)
{
 struct quota_info *dqopt = sb_dqopt(sb);

 return dqopt->ops[type]->write_file_info(sb, type);
}
