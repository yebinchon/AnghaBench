
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* pin_get_slot_channel ) (TYPE_2__*,int ,int) ;} ;
struct hdac_chmap {TYPE_2__* hdac; TYPE_1__ ops; } ;
typedef int hda_nid_t ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int *,char*,int,int) ;
 int stub1 (TYPE_2__*,int ,int) ;

__attribute__((used)) static void hdmi_debug_channel_mapping(struct hdac_chmap *chmap,
           hda_nid_t pin_nid)
{
}
