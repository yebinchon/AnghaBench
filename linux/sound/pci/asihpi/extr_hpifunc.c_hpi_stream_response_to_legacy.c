
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int state; int auxiliary_data_available; } ;
struct TYPE_4__ {int state; int auxiliary_data_available; } ;
struct TYPE_6__ {TYPE_2__ stream_info; TYPE_1__ legacy_stream_info; } ;
struct hpi_stream_res {TYPE_3__ u; } ;



void hpi_stream_response_to_legacy(struct hpi_stream_res *pSR)
{
 pSR->u.legacy_stream_info.auxiliary_data_available =
  pSR->u.stream_info.auxiliary_data_available;
 pSR->u.legacy_stream_info.state = pSR->u.stream_info.state;
}
