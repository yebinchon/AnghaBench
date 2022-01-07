
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct policydb {int te_cond_avtab; int te_avtab; } ;
struct cond_insertf_data {struct cond_av_list* head; struct cond_av_list* tail; struct cond_av_list* other; struct policydb* p; } ;
struct cond_av_list {struct cond_av_list* next; struct avtab_node* node; } ;
struct avtab_node {int dummy; } ;
struct avtab_key {int specified; } ;
struct avtab_datum {int dummy; } ;
struct avtab {int dummy; } ;


 int AVTAB_TYPE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct avtab_node* avtab_insert_nonunique (int *,struct avtab_key*,struct avtab_datum*) ;
 scalar_t__ avtab_search (int *,struct avtab_key*) ;
 struct avtab_node* avtab_search_node (int *,struct avtab_key*) ;
 scalar_t__ avtab_search_node_next (struct avtab_node*,int) ;
 int cond_av_list_destroy (struct cond_av_list*) ;
 struct cond_av_list* kzalloc (int,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int cond_insertf(struct avtab *a, struct avtab_key *k, struct avtab_datum *d, void *ptr)
{
 struct cond_insertf_data *data = ptr;
 struct policydb *p = data->p;
 struct cond_av_list *other = data->other, *list, *cur;
 struct avtab_node *node_ptr;
 u8 found;
 int rc = -EINVAL;






 if (k->specified & AVTAB_TYPE) {
  if (avtab_search(&p->te_avtab, k)) {
   pr_err("SELinux: type rule already exists outside of a conditional.\n");
   goto err;
  }
  if (other) {
   node_ptr = avtab_search_node(&p->te_cond_avtab, k);
   if (node_ptr) {
    if (avtab_search_node_next(node_ptr, k->specified)) {
     pr_err("SELinux: too many conflicting type rules.\n");
     goto err;
    }
    found = 0;
    for (cur = other; cur; cur = cur->next) {
     if (cur->node == node_ptr) {
      found = 1;
      break;
     }
    }
    if (!found) {
     pr_err("SELinux: conflicting type rules.\n");
     goto err;
    }
   }
  } else {
   if (avtab_search(&p->te_cond_avtab, k)) {
    pr_err("SELinux: conflicting type rules when adding type rule for true.\n");
    goto err;
   }
  }
 }

 node_ptr = avtab_insert_nonunique(&p->te_cond_avtab, k, d);
 if (!node_ptr) {
  pr_err("SELinux: could not insert rule.\n");
  rc = -ENOMEM;
  goto err;
 }

 list = kzalloc(sizeof(*list), GFP_KERNEL);
 if (!list) {
  rc = -ENOMEM;
  goto err;
 }

 list->node = node_ptr;
 if (!data->head)
  data->head = list;
 else
  data->tail->next = list;
 data->tail = list;
 return 0;

err:
 cond_av_list_destroy(data->head);
 data->head = ((void*)0);
 return rc;
}
