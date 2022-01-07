
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdtp_stream {int unit; int source_node_id_field; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int node_id; } ;


 int CIP_SID_MASK ;
 int CIP_SID_SHIFT ;
 int WRITE_ONCE (int ,int) ;
 TYPE_2__* fw_parent_device (int ) ;

void amdtp_stream_update(struct amdtp_stream *s)
{

 WRITE_ONCE(s->source_node_id_field,
                   (fw_parent_device(s->unit)->card->node_id << CIP_SID_SHIFT) & CIP_SID_MASK);
}
