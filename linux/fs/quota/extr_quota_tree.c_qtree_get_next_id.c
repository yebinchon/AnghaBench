
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtree_mem_dqinfo {int dummy; } ;
struct kqid {int type; } ;
typedef int qid_t ;


 int QT_TREEOFF ;
 int find_next_id (struct qtree_mem_dqinfo*,int *,int ,int ) ;
 int from_kqid (int *,struct kqid) ;
 int init_user_ns ;
 struct kqid make_kqid (int *,int ,int ) ;

int qtree_get_next_id(struct qtree_mem_dqinfo *info, struct kqid *qid)
{
 qid_t id = from_kqid(&init_user_ns, *qid);
 int ret;

 ret = find_next_id(info, &id, QT_TREEOFF, 0);
 if (ret < 0)
  return ret;
 *qid = make_kqid(&init_user_ns, qid->type, id);
 return 0;
}
