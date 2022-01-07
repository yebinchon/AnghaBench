
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
struct hpi_response {int error; } ;
struct TYPE_5__ {int format; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {TYPE_4__ u; int obj_index; int adapter_index; } ;
struct hpi_format {int dummy; } ;


 int HPI_ERROR_INVALID_HANDLE ;
 int HPI_ISTREAM_QUERY_FORMAT ;
 int HPI_OBJ_ISTREAM ;
 int hpi_format_to_msg (int *,struct hpi_format const*) ;
 scalar_t__ hpi_handle_indexes (int ,int *,int *) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_instream_query_format(u32 h_instream,
 const struct hpi_format *p_format)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_ISTREAM,
  HPI_ISTREAM_QUERY_FORMAT);
 if (hpi_handle_indexes(h_instream, &hm.adapter_index, &hm.obj_index))
  return HPI_ERROR_INVALID_HANDLE;
 hpi_format_to_msg(&hm.u.d.u.data.format, p_format);

 hpi_send_recv(&hm, &hr);

 return hr.error;
}
