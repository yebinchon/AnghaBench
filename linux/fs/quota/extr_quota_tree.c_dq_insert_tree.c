
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtree_mem_dqinfo {int dqi_blocks; } ;
struct dquot {int dq_sb; } ;


 int EIO ;
 int QT_TREEOFF ;
 int do_insert_tree (struct qtree_mem_dqinfo*,struct dquot*,int*,int ) ;
 int quota_error (int ,char*) ;

__attribute__((used)) static inline int dq_insert_tree(struct qtree_mem_dqinfo *info,
     struct dquot *dquot)
{
 int tmp = QT_TREEOFF;







 return do_insert_tree(info, dquot, &tmp, 0);
}
