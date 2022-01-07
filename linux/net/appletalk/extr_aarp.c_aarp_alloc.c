
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aarp_entry {int packet_queue; } ;


 int GFP_ATOMIC ;
 struct aarp_entry* kmalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct aarp_entry *aarp_alloc(void)
{
 struct aarp_entry *a = kmalloc(sizeof(*a), GFP_ATOMIC);

 if (a)
  skb_queue_head_init(&a->packet_queue);
 return a;
}
