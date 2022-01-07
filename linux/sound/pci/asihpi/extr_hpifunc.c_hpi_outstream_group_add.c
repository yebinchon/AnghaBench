
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
struct hpi_response {scalar_t__ error; } ;
struct TYPE_5__ {char object_type; int stream_index; } ;
struct TYPE_6__ {TYPE_1__ stream; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {scalar_t__ adapter_index; TYPE_4__ u; int obj_index; } ;


 scalar_t__ HPI_ERROR_INVALID_HANDLE ;
 scalar_t__ HPI_ERROR_INVALID_OBJ ;
 scalar_t__ HPI_ERROR_NO_INTERADAPTER_GROUPS ;


 int HPI_OSTREAM_GROUP_ADD ;
 scalar_t__ hpi_handle_indexes (int ,scalar_t__*,int *) ;
 char hpi_handle_object (int ) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_outstream_group_add(u32 h_outstream, u32 h_stream)
{
 struct hpi_message hm;
 struct hpi_response hr;
 u16 adapter;
 char c_obj_type;

 hpi_init_message_response(&hm, &hr, 128,
  HPI_OSTREAM_GROUP_ADD);

 if (hpi_handle_indexes(h_outstream, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;

 if (hpi_handle_indexes(h_stream, &adapter,
   &hm.u.d.u.stream.stream_index))
  return HPI_ERROR_INVALID_HANDLE;

 c_obj_type = hpi_handle_object(h_stream);
 switch (c_obj_type) {
 case 128:
 case 129:
  hm.u.d.u.stream.object_type = c_obj_type;
  break;
 default:
  return HPI_ERROR_INVALID_OBJ;
 }
 if (adapter != hm.adapter_index)
  return HPI_ERROR_NO_INTERADAPTER_GROUPS;

 hpi_send_recv(&hm, &hr);
 return hr.error;
}
