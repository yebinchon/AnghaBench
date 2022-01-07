
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct module {int dummy; } ;
struct inet_timewait_sock {TYPE_2__* tw_prot; } ;
struct TYPE_4__ {TYPE_1__* twsk_prot; int name; struct module* owner; } ;
struct TYPE_3__ {int twsk_slab; } ;


 int kmem_cache_free (int ,struct inet_timewait_sock*) ;
 int module_put (struct module*) ;
 int pr_debug (char*,int ,struct inet_timewait_sock*) ;
 int twsk_destructor (struct sock*) ;

void inet_twsk_free(struct inet_timewait_sock *tw)
{
 struct module *owner = tw->tw_prot->owner;
 twsk_destructor((struct sock *)tw);



 kmem_cache_free(tw->tw_prot->twsk_prot->twsk_slab, tw);
 module_put(owner);
}
