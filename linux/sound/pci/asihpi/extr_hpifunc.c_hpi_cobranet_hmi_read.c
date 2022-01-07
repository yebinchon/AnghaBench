
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int error; } ;
struct hpi_res_cobranet_hmiread {int byte_count; TYPE_3__ h; int bytes; } ;
struct TYPE_7__ {int obj_index; int adapter_index; } ;
struct TYPE_6__ {int byte_count; int hmi_address; int attribute; } ;
struct hpi_msg_cobranet_hmiread {TYPE_2__ h; TYPE_1__ p; } ;
typedef int hr ;
typedef int hm ;


 int HPI_COBRANET_GET ;
 int HPI_CONTROL_GET_STATE ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL ;
 int HPI_OBJ_CONTROL ;
 scalar_t__ hpi_handle_indexes (int,int *,int *) ;
 int hpi_init_message_responseV1 (TYPE_2__*,int,TYPE_3__*,int,int ,int ) ;
 int hpi_send_recvV1 (TYPE_2__*,TYPE_3__*) ;
 int memcpy (int *,int ,int) ;

u16 hpi_cobranet_hmi_read(u32 h_control, u32 hmi_address, u32 max_byte_count,
 u32 *pbyte_count, u8 *pb_data)
{
 struct hpi_msg_cobranet_hmiread hm;
 struct hpi_res_cobranet_hmiread hr;

 hpi_init_message_responseV1(&hm.h, sizeof(hm), &hr.h, sizeof(hr),
  HPI_OBJ_CONTROL, HPI_CONTROL_GET_STATE);

 if (hpi_handle_indexes(h_control, &hm.h.adapter_index,
   &hm.h.obj_index))
  return HPI_ERROR_INVALID_HANDLE;

 if (max_byte_count > sizeof(hr.bytes))
  return HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL;

 hm.p.attribute = HPI_COBRANET_GET;
 hm.p.byte_count = max_byte_count;
 hm.p.hmi_address = hmi_address;

 hpi_send_recvV1(&hm.h, &hr.h);

 if (!hr.h.error && pb_data) {
  if (hr.byte_count > sizeof(hr.bytes))

   return HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL;

  *pbyte_count = hr.byte_count;

  if (hr.byte_count < max_byte_count)
   max_byte_count = *pbyte_count;

  memcpy(pb_data, hr.bytes, max_byte_count);
 }
 return hr.h.error;
}
