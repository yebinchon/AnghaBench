
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int connid; } ;
struct TYPE_8__ {int paramlen; int params; int name; int fifosize_bufs; int fifosize_kb; } ;
struct TYPE_7__ {int volume; int connid; } ;
struct TYPE_6__ {int connid; } ;
struct TYPE_10__ {TYPE_4__ video; TYPE_3__ utility; TYPE_2__ rfm; TYPE_1__ datagram; } ;
struct cfctrl_link_param {int linktype; scalar_t__ priority; scalar_t__ phyid; scalar_t__ endpoint; scalar_t__ chtype; TYPE_5__ u; } ;
 int memcmp (int ,int ,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static bool param_eq(const struct cfctrl_link_param *p1,
       const struct cfctrl_link_param *p2)
{
 bool eq =
     p1->linktype == p2->linktype &&
     p1->priority == p2->priority &&
     p1->phyid == p2->phyid &&
     p1->endpoint == p2->endpoint && p1->chtype == p2->chtype;

 if (!eq)
  return 0;

 switch (p1->linktype) {
 case 129:
  return 1;
 case 134:
  return p1->u.datagram.connid == p2->u.datagram.connid;
 case 131:
  return
      p1->u.rfm.connid == p2->u.rfm.connid &&
      strcmp(p1->u.rfm.volume, p2->u.rfm.volume) == 0;
 case 130:
  return
      p1->u.utility.fifosize_kb == p2->u.utility.fifosize_kb
      && p1->u.utility.fifosize_bufs ==
      p2->u.utility.fifosize_bufs
      && strcmp(p1->u.utility.name, p2->u.utility.name) == 0
      && p1->u.utility.paramlen == p2->u.utility.paramlen
      && memcmp(p1->u.utility.params, p2->u.utility.params,
         p1->u.utility.paramlen) == 0;

 case 128:
  return p1->u.video.connid == p2->u.video.connid;
 case 133:
  return 1;
 case 132:
  return 0;
 default:
  return 0;
 }
 return 0;
}
