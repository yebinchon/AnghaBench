
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtree_mem_dqinfo {int dummy; } ;
struct kqid {int dummy; } ;
typedef int qid_t ;


 int __get_index (struct qtree_mem_dqinfo*,int ,int) ;
 int from_kqid (int *,struct kqid) ;
 int init_user_ns ;

__attribute__((used)) static int get_index(struct qtree_mem_dqinfo *info, struct kqid qid, int depth)
{
 qid_t id = from_kqid(&init_user_ns, qid);

 return __get_index(info, id, depth);
}
