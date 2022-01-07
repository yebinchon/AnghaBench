
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ dq_op; } ;


 int LIST_HEAD (int ) ;
 int dquot_srcu ;
 int put_dquot_list (int *) ;
 int remove_dquot_ref (struct super_block*,int,int *) ;
 int synchronize_srcu (int *) ;
 int tofree_head ;

__attribute__((used)) static void drop_dquot_ref(struct super_block *sb, int type)
{
 LIST_HEAD(tofree_head);

 if (sb->dq_op) {
  remove_dquot_ref(sb, type, &tofree_head);
  synchronize_srcu(&dquot_srcu);
  put_dquot_list(&tofree_head);
 }
}
