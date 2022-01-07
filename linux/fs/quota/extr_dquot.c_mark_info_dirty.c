
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {int dqi_flags; } ;


 int DQF_INFO_DIRTY ;
 int dq_data_lock ;
 TYPE_2__* sb_dqopt (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mark_info_dirty(struct super_block *sb, int type)
{
 spin_lock(&dq_data_lock);
 sb_dqopt(sb)->info[type].dqi_flags |= DQF_INFO_DIRTY;
 spin_unlock(&dq_data_lock);
}
