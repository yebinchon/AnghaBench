
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int loopback_queue ;
 int loopback_timer ;
 int rose_loopback_timer ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;

void rose_loopback_init(void)
{
 skb_queue_head_init(&loopback_queue);

 timer_setup(&loopback_timer, rose_loopback_timer, 0);
}
