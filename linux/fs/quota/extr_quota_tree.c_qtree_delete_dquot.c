
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct qtree_mem_dqinfo {int dummy; } ;
struct dquot {int dq_off; } ;


 int QT_TREEOFF ;
 int remove_tree (struct qtree_mem_dqinfo*,struct dquot*,int *,int ) ;

int qtree_delete_dquot(struct qtree_mem_dqinfo *info, struct dquot *dquot)
{
 uint tmp = QT_TREEOFF;

 if (!dquot->dq_off)
  return 0;
 return remove_tree(info, dquot, &tmp, 0);
}
