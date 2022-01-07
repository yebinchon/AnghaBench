
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct hpi_response {int error; TYPE_2__ u; } ;
struct hpi_message {int dummy; } ;


 int HPI_OBJ_SUBSYSTEM ;
 int HPI_SUBSYS_GET_VERSION ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv (struct hpi_message*,struct hpi_response*) ;

u16 hpi_subsys_get_version_ex(u32 *pversion_ex)
{
 struct hpi_message hm;
 struct hpi_response hr;

 hpi_init_message_response(&hm, &hr, HPI_OBJ_SUBSYSTEM,
  HPI_SUBSYS_GET_VERSION);
 hpi_send_recv(&hm, &hr);
 *pversion_ex = hr.u.s.data;
 return hr.error;
}
