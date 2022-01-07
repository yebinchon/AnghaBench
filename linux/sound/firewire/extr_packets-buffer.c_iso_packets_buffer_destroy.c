
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iso_packets_buffer {int packets; int iso_buffer; } ;
struct fw_unit {int dummy; } ;
struct TYPE_2__ {int card; } ;


 int fw_iso_buffer_destroy (int *,int ) ;
 TYPE_1__* fw_parent_device (struct fw_unit*) ;
 int kfree (int ) ;

void iso_packets_buffer_destroy(struct iso_packets_buffer *b,
    struct fw_unit *unit)
{
 fw_iso_buffer_destroy(&b->iso_buffer, fw_parent_device(unit)->card);
 kfree(b->packets);
}
