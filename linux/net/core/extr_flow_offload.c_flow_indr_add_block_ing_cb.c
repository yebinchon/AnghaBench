
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_indr_block_ing_entry {int list; } ;


 int block_ing_cb_list ;
 int flow_indr_block_ing_cb_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void flow_indr_add_block_ing_cb(struct flow_indr_block_ing_entry *entry)
{
 mutex_lock(&flow_indr_block_ing_cb_lock);
 list_add_tail(&entry->list, &block_ing_cb_list);
 mutex_unlock(&flow_indr_block_ing_cb_lock);
}
