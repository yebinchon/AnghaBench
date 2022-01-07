
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct imapper {int dummy; } ;
struct TYPE_4__ {int msr; } ;
struct daio {TYPE_1__ rscl; } ;
struct dao {struct imapper** imappers; TYPE_2__* mgr; struct daio daio; } ;
struct TYPE_5__ {int (* imap_delete ) (TYPE_2__*,struct imapper*) ;} ;


 int kfree (struct imapper*) ;
 int stub1 (TYPE_2__*,struct imapper*) ;
 int stub2 (TYPE_2__*,struct imapper*) ;

__attribute__((used)) static int dao_clear_left_input(struct dao *dao)
{
 struct imapper *entry;
 struct daio *daio = &dao->daio;
 int i;

 if (!dao->imappers[0])
  return 0;

 entry = dao->imappers[0];
 dao->mgr->imap_delete(dao->mgr, entry);

 for (i = 1; i < daio->rscl.msr; i++) {
  entry = dao->imappers[i];
  dao->mgr->imap_delete(dao->mgr, entry);
  dao->imappers[i] = ((void*)0);
 }

 kfree(dao->imappers[0]);
 dao->imappers[0] = ((void*)0);

 return 0;
}
