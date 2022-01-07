
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct dev_info {int id; } ;
struct TYPE_23__ {int paramlen; int params; int name; } ;
struct TYPE_19__ {int volume; } ;
struct TYPE_18__ {int connid; } ;
struct TYPE_24__ {TYPE_8__ utility; TYPE_4__ rfm; TYPE_3__ datagram; } ;
struct cfctrl_link_param {int phyid; int endpoint; int chtype; void* linktype; TYPE_9__ u; scalar_t__ priority; } ;
struct cfcnfg {int dummy; } ;
struct TYPE_13__ {int service; int type; } ;
struct TYPE_21__ {int service; } ;
struct TYPE_20__ {int volume; int connection_id; } ;
struct TYPE_17__ {int connection_id; } ;
struct TYPE_16__ {int type; } ;
struct TYPE_14__ {TYPE_10__ dbg; TYPE_6__ util; TYPE_5__ rfm; TYPE_2__ dgm; TYPE_1__ at; } ;
struct TYPE_15__ {TYPE_11__ u; } ;
struct TYPE_22__ {int size; int data; } ;
struct caif_connect_request {scalar_t__ ifindex; int link_selector; int protocol; TYPE_12__ sockaddr; TYPE_7__ param; scalar_t__ priority; } ;
typedef enum cfcnfg_phy_preference { ____Placeholder_cfcnfg_phy_preference } cfcnfg_phy_preference ;
 scalar_t__ CAIF_PRIO_MAX ;
 void* CFCTRL_SRV_DATAGRAM ;
 void* CFCTRL_SRV_DBG ;
 void* CFCTRL_SRV_RFM ;
 void* CFCTRL_SRV_UTIL ;
 void* CFCTRL_SRV_VEI ;
 int CFPHYPREF_HIGH_BW ;
 int CFPHYPREF_LOW_LAT ;
 int EINVAL ;
 int ENODEV ;
 int caif_assert (int) ;
 int cfcnfg_get_id_from_ifi (struct cfcnfg*,scalar_t__) ;
 struct dev_info* cfcnfg_get_phyid (struct cfcnfg*,int) ;
 int memcpy (int ,int ,int) ;
 int memset (struct cfctrl_link_param*,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int caif_connect_req_to_link_param(struct cfcnfg *cnfg,
       struct caif_connect_request *s,
       struct cfctrl_link_param *l)
{
 struct dev_info *dev_info;
 enum cfcnfg_phy_preference pref;
 int res;

 memset(l, 0, sizeof(*l));

 l->priority = CAIF_PRIO_MAX - s->priority + 1;

 if (s->ifindex != 0) {
  res = cfcnfg_get_id_from_ifi(cnfg, s->ifindex);
  if (res < 0)
   return res;
  l->phyid = res;
 } else {
  switch (s->link_selector) {
  case 129:
   pref = CFPHYPREF_HIGH_BW;
   break;
  case 128:
   pref = CFPHYPREF_LOW_LAT;
   break;
  default:
   return -EINVAL;
  }
  dev_info = cfcnfg_get_phyid(cnfg, pref);
  if (dev_info == ((void*)0))
   return -ENODEV;
  l->phyid = dev_info->id;
 }
 switch (s->protocol) {
 case 135:
  l->linktype = CFCTRL_SRV_VEI;
  l->endpoint = (s->sockaddr.u.at.type >> 2) & 0x3;
  l->chtype = s->sockaddr.u.at.type & 0x3;
  break;
 case 134:
  l->linktype = CFCTRL_SRV_DATAGRAM;
  l->chtype = 0x00;
  l->u.datagram.connid = s->sockaddr.u.dgm.connection_id;
  break;
 case 133:
  l->linktype = CFCTRL_SRV_DATAGRAM;
  l->chtype = 0x03;
  l->endpoint = 0x00;
  l->u.datagram.connid = s->sockaddr.u.dgm.connection_id;
  break;
 case 131:
  l->linktype = CFCTRL_SRV_RFM;
  l->u.datagram.connid = s->sockaddr.u.rfm.connection_id;
  strlcpy(l->u.rfm.volume, s->sockaddr.u.rfm.volume,
   sizeof(l->u.rfm.volume));
  break;
 case 130:
  l->linktype = CFCTRL_SRV_UTIL;
  l->endpoint = 0x00;
  l->chtype = 0x00;
  strlcpy(l->u.utility.name, s->sockaddr.u.util.service,
   sizeof(l->u.utility.name));
  caif_assert(sizeof(l->u.utility.name) > 10);
  l->u.utility.paramlen = s->param.size;
  if (l->u.utility.paramlen > sizeof(l->u.utility.params))
   l->u.utility.paramlen = sizeof(l->u.utility.params);

  memcpy(l->u.utility.params, s->param.data,
         l->u.utility.paramlen);

  break;
 case 132:
  l->linktype = CFCTRL_SRV_DBG;
  l->endpoint = s->sockaddr.u.dbg.service;
  l->chtype = s->sockaddr.u.dbg.type;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
