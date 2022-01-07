
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct policydb {int dummy; } ;
struct cond_node {struct cond_node* next; } ;
typedef int __le32 ;


 int cond_write_node (struct policydb*,struct cond_node*,void*) ;
 int cpu_to_le32 (scalar_t__) ;
 int put_entry (int *,int,int,void*) ;

int cond_write_list(struct policydb *p, struct cond_node *list, void *fp)
{
 struct cond_node *cur;
 u32 len;
 __le32 buf[1];
 int rc;

 len = 0;
 for (cur = list; cur != ((void*)0); cur = cur->next)
  len++;
 buf[0] = cpu_to_le32(len);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return rc;

 for (cur = list; cur != ((void*)0); cur = cur->next) {
  rc = cond_write_node(p, cur, fp);
  if (rc)
   return rc;
 }

 return 0;
}
