
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpi_response {int dummy; } ;
struct hpi_message {scalar_t__ obj_index; size_t adapter_index; int function; } ;
struct TYPE_2__ {scalar_t__ num_instreams; } ;


 int HPI_ERROR_INVALID_OBJ_INDEX ;


 int HPI_OBJ_ISTREAM ;
 TYPE_1__* aDAPTER_INFO ;
 int hpi_init_response (struct hpi_response*,int ,int,int ) ;
 int hw_entry_point (struct hpi_message*,struct hpi_response*) ;
 int instream_close (struct hpi_message*,struct hpi_response*,void*) ;
 int instream_open (struct hpi_message*,struct hpi_response*,void*) ;

__attribute__((used)) static void instream_message(struct hpi_message *phm,
 struct hpi_response *phr, void *h_owner)
{
 if (phm->obj_index >= aDAPTER_INFO[phm->adapter_index].num_instreams) {
  hpi_init_response(phr, HPI_OBJ_ISTREAM, phm->function,
   HPI_ERROR_INVALID_OBJ_INDEX);
  return;
 }

 switch (phm->function) {
 case 128:
  instream_open(phm, phr, h_owner);
  break;
 case 129:
  instream_close(phm, phr, h_owner);
  break;
 default:
  hw_entry_point(phm, phr);
  break;
 }
}
