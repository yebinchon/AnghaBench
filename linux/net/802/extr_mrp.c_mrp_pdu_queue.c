
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mrp_applicant {TYPE_3__* pdu; int queue; TYPE_7__* dev; TYPE_2__* app; } ;
struct TYPE_12__ {int dev_addr; } ;
struct TYPE_11__ {scalar_t__ mh; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_8__ {int type; } ;
struct TYPE_9__ {int group_address; TYPE_1__ pkttype; } ;


 int dev_hard_header (TYPE_3__*,TYPE_7__*,int ,int ,int ,int ) ;
 TYPE_4__* mrp_cb (TYPE_3__*) ;
 int mrp_pdu_append_end_mark (struct mrp_applicant*) ;
 int ntohs (int ) ;
 int skb_queue_tail (int *,TYPE_3__*) ;

__attribute__((used)) static void mrp_pdu_queue(struct mrp_applicant *app)
{
 if (!app->pdu)
  return;

 if (mrp_cb(app->pdu)->mh)
  mrp_pdu_append_end_mark(app);
 mrp_pdu_append_end_mark(app);

 dev_hard_header(app->pdu, app->dev, ntohs(app->app->pkttype.type),
   app->app->group_address, app->dev->dev_addr,
   app->pdu->len);

 skb_queue_tail(&app->queue, app->pdu);
 app->pdu = ((void*)0);
}
