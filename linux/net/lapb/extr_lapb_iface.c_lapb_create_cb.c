
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int refcnt; int state; int window; int mode; int n2; int t2; int t1; int t2timer; int t1timer; int ack_queue; int write_queue; } ;


 int GFP_ATOMIC ;
 int LAPB_DEFAULT_MODE ;
 int LAPB_DEFAULT_N2 ;
 int LAPB_DEFAULT_T1 ;
 int LAPB_DEFAULT_T2 ;
 int LAPB_DEFAULT_WINDOW ;
 int LAPB_STATE_0 ;
 struct lapb_cb* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int *,int ) ;

__attribute__((used)) static struct lapb_cb *lapb_create_cb(void)
{
 struct lapb_cb *lapb = kzalloc(sizeof(*lapb), GFP_ATOMIC);

 if (!lapb)
  goto out;

 skb_queue_head_init(&lapb->write_queue);
 skb_queue_head_init(&lapb->ack_queue);

 timer_setup(&lapb->t1timer, ((void*)0), 0);
 timer_setup(&lapb->t2timer, ((void*)0), 0);

 lapb->t1 = LAPB_DEFAULT_T1;
 lapb->t2 = LAPB_DEFAULT_T2;
 lapb->n2 = LAPB_DEFAULT_N2;
 lapb->mode = LAPB_DEFAULT_MODE;
 lapb->window = LAPB_DEFAULT_WINDOW;
 lapb->state = LAPB_STATE_0;
 refcount_set(&lapb->refcnt, 1);
out:
 return lapb;
}
