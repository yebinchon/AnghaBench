
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_ids {int max_idx; int last_idx; int next_id; int ipcs_idr; int key_ht; int rwsem; scalar_t__ seq; scalar_t__ in_use; } ;


 int idr_init (int *) ;
 int init_rwsem (int *) ;
 int ipc_kht_params ;
 int rhashtable_init (int *,int *) ;

void ipc_init_ids(struct ipc_ids *ids)
{
 ids->in_use = 0;
 ids->seq = 0;
 init_rwsem(&ids->rwsem);
 rhashtable_init(&ids->key_ht, &ipc_kht_params);
 idr_init(&ids->ipcs_idr);
 ids->max_idx = -1;
 ids->last_idx = -1;



}
