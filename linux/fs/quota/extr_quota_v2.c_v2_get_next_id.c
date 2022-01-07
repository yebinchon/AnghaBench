
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quota_info {int dqio_sem; } ;
struct kqid {int type; } ;
struct TYPE_2__ {int dqi_priv; } ;


 int down_read (int *) ;
 int qtree_get_next_id (int ,struct kqid*) ;
 TYPE_1__* sb_dqinfo (struct super_block*,int ) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 int up_read (int *) ;

__attribute__((used)) static int v2_get_next_id(struct super_block *sb, struct kqid *qid)
{
 struct quota_info *dqopt = sb_dqopt(sb);
 int ret;

 down_read(&dqopt->dqio_sem);
 ret = qtree_get_next_id(sb_dqinfo(sb, qid->type)->dqi_priv, qid);
 up_read(&dqopt->dqio_sem);
 return ret;
}
