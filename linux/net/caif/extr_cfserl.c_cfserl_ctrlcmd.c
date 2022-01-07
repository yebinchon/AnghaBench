
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cflayer {TYPE_1__* up; } ;
typedef enum caif_ctrlcmd { ____Placeholder_caif_ctrlcmd } caif_ctrlcmd ;
struct TYPE_2__ {int (* ctrlcmd ) (TYPE_1__*,int,int) ;} ;


 int stub1 (TYPE_1__*,int,int) ;

__attribute__((used)) static void cfserl_ctrlcmd(struct cflayer *layr, enum caif_ctrlcmd ctrl,
      int phyid)
{
 layr->up->ctrlcmd(layr->up, ctrl, phyid);
}
