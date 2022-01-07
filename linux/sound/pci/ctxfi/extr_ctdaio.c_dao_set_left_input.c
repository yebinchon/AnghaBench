
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rsc {TYPE_2__* ops; } ;
struct imapper {int addr; int user; int slot; } ;
struct TYPE_12__ {int msr; TYPE_3__* ops; } ;
struct daio {TYPE_4__ rscl; } ;
struct dao {struct imapper** imappers; TYPE_5__* mgr; TYPE_1__* ops; struct daio daio; } ;
struct TYPE_13__ {int (* imap_add ) (TYPE_5__*,struct imapper*) ;} ;
struct TYPE_11__ {int (* master ) (TYPE_4__*) ;int (* next_conj ) (TYPE_4__*) ;int (* index ) (TYPE_4__*) ;} ;
struct TYPE_10__ {int (* master ) (struct rsc*) ;int (* next_conj ) (struct rsc*) ;int (* output_slot ) (struct rsc*) ;} ;
struct TYPE_9__ {int (* clear_left_input ) (struct dao*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct imapper* kzalloc (int,int ) ;
 int stub1 (struct dao*) ;
 int stub10 (TYPE_4__*) ;
 int stub2 (struct rsc*) ;
 int stub3 (TYPE_4__*) ;
 int stub4 (struct rsc*) ;
 int stub5 (TYPE_4__*) ;
 int stub6 (TYPE_5__*,struct imapper*) ;
 int stub7 (struct rsc*) ;
 int stub8 (TYPE_4__*) ;
 int stub9 (struct rsc*) ;

__attribute__((used)) static int dao_set_left_input(struct dao *dao, struct rsc *input)
{
 struct imapper *entry;
 struct daio *daio = &dao->daio;
 int i;

 entry = kzalloc((sizeof(*entry) * daio->rscl.msr), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 dao->ops->clear_left_input(dao);

 input->ops->master(input);
 daio->rscl.ops->master(&daio->rscl);
 for (i = 0; i < daio->rscl.msr; i++, entry++) {
  entry->slot = input->ops->output_slot(input);
  entry->user = entry->addr = daio->rscl.ops->index(&daio->rscl);
  dao->mgr->imap_add(dao->mgr, entry);
  dao->imappers[i] = entry;

  input->ops->next_conj(input);
  daio->rscl.ops->next_conj(&daio->rscl);
 }
 input->ops->master(input);
 daio->rscl.ops->master(&daio->rscl);

 return 0;
}
