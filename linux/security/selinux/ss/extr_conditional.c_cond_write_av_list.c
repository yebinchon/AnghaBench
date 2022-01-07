
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct policydb {int dummy; } ;
struct policy_file {int dummy; } ;
struct cond_av_list {int node; struct cond_av_list* next; } ;
typedef int __le32 ;


 int avtab_write_item (struct policydb*,int ,struct policy_file*) ;
 int cpu_to_le32 (scalar_t__) ;
 int put_entry (int *,int,int,struct policy_file*) ;

__attribute__((used)) static int cond_write_av_list(struct policydb *p,
         struct cond_av_list *list, struct policy_file *fp)
{
 __le32 buf[1];
 struct cond_av_list *cur_list;
 u32 len;
 int rc;

 len = 0;
 for (cur_list = list; cur_list != ((void*)0); cur_list = cur_list->next)
  len++;

 buf[0] = cpu_to_le32(len);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return rc;

 if (len == 0)
  return 0;

 for (cur_list = list; cur_list != ((void*)0); cur_list = cur_list->next) {
  rc = avtab_write_item(p, cur_list->node, fp);
  if (rc)
   return rc;
 }

 return 0;
}
