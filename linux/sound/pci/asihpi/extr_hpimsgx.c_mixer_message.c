
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {int function; } ;




 int hw_entry_point (struct hpi_message*,struct hpi_response*) ;
 int mixer_close (struct hpi_message*,struct hpi_response*) ;
 int mixer_open (struct hpi_message*,struct hpi_response*) ;

__attribute__((used)) static void mixer_message(struct hpi_message *phm, struct hpi_response *phr)
{
 switch (phm->function) {
 case 128:
  mixer_open(phm, phr);
  break;
 case 129:
  mixer_close(phm, phr);
  break;
 default:
  hw_entry_point(phm, phr);
  break;
 }
}
