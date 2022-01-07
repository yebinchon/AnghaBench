
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct TYPE_4__ {int dev_info; TYPE_1__ layer; } ;
struct cfctrl {TYPE_2__ serv; } ;
struct caif_payload_info {int * dev_info; int channel_id; scalar_t__ hdr_len; } ;



__attribute__((used)) static void init_info(struct caif_payload_info *info, struct cfctrl *cfctrl)
{
 info->hdr_len = 0;
 info->channel_id = cfctrl->serv.layer.id;
 info->dev_info = &cfctrl->serv.dev_info;
}
