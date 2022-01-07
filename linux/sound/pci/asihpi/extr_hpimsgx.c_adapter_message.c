
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {int function; int adapter_index; } ;


 int HPIMSGX__cleanup (int ,void*) ;



 int HPI_OBJ_ADAPTER ;
 int adapter_close (struct hpi_message*,struct hpi_response*) ;
 int adapter_open (struct hpi_message*,struct hpi_response*) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int const) ;
 int hw_entry_point (struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static void adapter_message(struct hpi_message *phm, struct hpi_response *phr,
 void *h_owner)
{
 switch (phm->function) {
 case 128:
  adapter_open(phm, phr);
  break;
 case 130:
  adapter_close(phm, phr);
  break;
 case 129:
  HPIMSGX__cleanup(phm->adapter_index, h_owner);
  {
   struct hpi_message hm;
   struct hpi_response hr;
   hpi_init_message_response(&hm, &hr, HPI_OBJ_ADAPTER,
    130);
   hm.adapter_index = phm->adapter_index;
   hw_entry_point(&hm, &hr);
  }
  hw_entry_point(phm, phr);
  break;

 default:
  hw_entry_point(phm, phr);
  break;
 }
}
