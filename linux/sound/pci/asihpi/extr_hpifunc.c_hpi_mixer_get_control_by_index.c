
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {scalar_t__ src_node_type; scalar_t__ src_node_index; scalar_t__ dst_node_type; scalar_t__ dst_node_index; scalar_t__ control_index; } ;
struct TYPE_8__ {TYPE_3__ m; } ;
struct hpi_response {scalar_t__ error; TYPE_4__ u; } ;
struct TYPE_5__ {scalar_t__ control_index; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct hpi_message {int adapter_index; TYPE_2__ u; } ;


 scalar_t__ HPI_DESTNODE_NONE ;
 scalar_t__ HPI_ERROR_INVALID_HANDLE ;
 int HPI_MIXER_GET_CONTROL_BY_INDEX ;
 int HPI_OBJ_CONTROL ;
 int HPI_OBJ_MIXER ;
 scalar_t__ HPI_SOURCENODE_NONE ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_indexes_to_handle (int ,int ,scalar_t__) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_mixer_get_control_by_index(u32 h_mixer, u16 control_index,
 u16 *pw_src_node_type, u16 *pw_src_node_index, u16 *pw_dst_node_type,
 u16 *pw_dst_node_index, u16 *pw_control_type, u32 *ph_control)
{
 struct hpi_message hm;
 struct hpi_response hr;
 hpi_init_message_response(&hm, &hr, HPI_OBJ_MIXER,
  HPI_MIXER_GET_CONTROL_BY_INDEX);
 if (hpi_handle_indexes(h_mixer, &hm.adapter_index, ((void*)0)))
  return HPI_ERROR_INVALID_HANDLE;
 hm.u.m.control_index = control_index;
 hpi_send_recv(&hm, &hr);

 if (pw_src_node_type) {
  *pw_src_node_type =
   hr.u.m.src_node_type + HPI_SOURCENODE_NONE;
  *pw_src_node_index = hr.u.m.src_node_index;
  *pw_dst_node_type = hr.u.m.dst_node_type + HPI_DESTNODE_NONE;
  *pw_dst_node_index = hr.u.m.dst_node_index;
 }
 if (pw_control_type)
  *pw_control_type = hr.u.m.control_index;

 if (ph_control) {
  if (hr.error == 0)
   *ph_control =
    hpi_indexes_to_handle(HPI_OBJ_CONTROL,
    hm.adapter_index, control_index);
  else
   *ph_control = 0;
 }
 return hr.error;
}
