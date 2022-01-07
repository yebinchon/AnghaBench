
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cflayer {int name; int ctrlcmd; int transmit; int receive; } ;
struct cfmuxl {struct cflayer layer; int receive_lock; int transmit_lock; int frml_list; int srvl_list; } ;


 int CAIF_LAYER_NAME_SZ ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int cfmuxl_ctrlcmd ;
 int cfmuxl_receive ;
 int cfmuxl_transmit ;
 struct cfmuxl* kzalloc (int,int ) ;
 int snprintf (int ,int ,char*) ;
 int spin_lock_init (int *) ;

struct cflayer *cfmuxl_create(void)
{
 struct cfmuxl *this = kzalloc(sizeof(struct cfmuxl), GFP_ATOMIC);

 if (!this)
  return ((void*)0);
 this->layer.receive = cfmuxl_receive;
 this->layer.transmit = cfmuxl_transmit;
 this->layer.ctrlcmd = cfmuxl_ctrlcmd;
 INIT_LIST_HEAD(&this->srvl_list);
 INIT_LIST_HEAD(&this->frml_list);
 spin_lock_init(&this->transmit_lock);
 spin_lock_init(&this->receive_lock);
 snprintf(this->layer.name, CAIF_LAYER_NAME_SZ, "mux");
 return &this->layer;
}
