
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct policydb {int te_cond_avtab; } ;
struct cond_insertf_data {struct cond_av_list* head; int * tail; struct cond_av_list* other; struct policydb* p; } ;
struct cond_av_list {int dummy; } ;
typedef int __le32 ;


 int avtab_read_item (int *,void*,struct policydb*,int ,struct cond_insertf_data*) ;
 int cond_insertf ;
 int le32_to_cpu (int ) ;
 int next_entry (int *,void*,int) ;

__attribute__((used)) static int cond_read_av_list(struct policydb *p, void *fp, struct cond_av_list **ret_list, struct cond_av_list *other)
{
 int i, rc;
 __le32 buf[1];
 u32 len;
 struct cond_insertf_data data;

 *ret_list = ((void*)0);

 rc = next_entry(buf, fp, sizeof(u32));
 if (rc)
  return rc;

 len = le32_to_cpu(buf[0]);
 if (len == 0)
  return 0;

 data.p = p;
 data.other = other;
 data.head = ((void*)0);
 data.tail = ((void*)0);
 for (i = 0; i < len; i++) {
  rc = avtab_read_item(&p->te_cond_avtab, fp, p, cond_insertf,
         &data);
  if (rc)
   return rc;
 }

 *ret_list = data.head;
 return 0;
}
