
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dao_desc {int passthru; int msr; } ;
struct TYPE_2__ {int type; } ;
struct dao {TYPE_1__ daio; struct daio_mgr* mgr; } ;
struct daio_mgr {int dummy; } ;
struct daio_desc {int passthru; int msr; int type; int member_0; } ;


 int dao_rsc_init (struct dao*,struct daio_desc*,struct daio_mgr*) ;
 int dao_rsc_uninit (struct dao*) ;

__attribute__((used)) static int dao_rsc_reinit(struct dao *dao, const struct dao_desc *desc)
{
 struct daio_mgr *mgr = dao->mgr;
 struct daio_desc dsc = {0};

 dsc.type = dao->daio.type;
 dsc.msr = desc->msr;
 dsc.passthru = desc->passthru;
 dao_rsc_uninit(dao);
 return dao_rsc_init(dao, &dsc, mgr);
}
