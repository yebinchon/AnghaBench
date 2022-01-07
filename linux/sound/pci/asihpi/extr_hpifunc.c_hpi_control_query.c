
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int param1; } ;
struct TYPE_8__ {TYPE_3__ c; } ;
struct hpi_response {int error; TYPE_4__ u; } ;
struct TYPE_5__ {int param2; int param1; int attribute; } ;
struct TYPE_6__ {TYPE_1__ c; } ;
struct hpi_message {TYPE_2__ u; int obj_index; int adapter_index; } ;


 int HPI_CONTROL_GET_INFO ;
 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_OBJ_CONTROL ;
 scalar_t__ hpi_handle_indexes (int const,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static
u16 hpi_control_query(const u32 h_control, const u16 attrib, const u32 index,
 const u32 param, u32 *psetting)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_CONTROL,
  HPI_CONTROL_GET_INFO);
 if (hpi_handle_indexes(h_control, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;

 hm.u.c.attribute = attrib;
 hm.u.c.param1 = index;
 hm.u.c.param2 = param;

 hpi_send_recv(&hm, &hr);
 *psetting = hr.u.c.param1;

 return hr.error;
}
