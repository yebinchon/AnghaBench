
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_owner; scalar_t__ fl_break_time; } ;


 int nfsd4_recall_file_layout (int ) ;

__attribute__((used)) static bool
nfsd4_layout_lm_break(struct file_lock *fl)
{





 fl->fl_break_time = 0;
 nfsd4_recall_file_layout(fl->fl_owner);
 return 0;
}
