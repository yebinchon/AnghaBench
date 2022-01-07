
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_seq_list {size_t mask; void** list; void* tail; void* head; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* L2CAP_SEQ_LIST_CLEAR ;
 void** kmalloc_array (size_t,int,int ) ;
 size_t roundup_pow_of_two (int ) ;

__attribute__((used)) static int l2cap_seq_list_init(struct l2cap_seq_list *seq_list, u16 size)
{
 size_t alloc_size, i;





 alloc_size = roundup_pow_of_two(size);

 seq_list->list = kmalloc_array(alloc_size, sizeof(u16), GFP_KERNEL);
 if (!seq_list->list)
  return -ENOMEM;

 seq_list->mask = alloc_size - 1;
 seq_list->head = L2CAP_SEQ_LIST_CLEAR;
 seq_list->tail = L2CAP_SEQ_LIST_CLEAR;
 for (i = 0; i < alloc_size; i++)
  seq_list->list[i] = L2CAP_SEQ_LIST_CLEAR;

 return 0;
}
