
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {int dummy; } ;


 int HOWNER_KERNEL ;
 int hpi_send_recv_f (struct hpi_message*,struct hpi_response*,int ) ;

void hpi_send_recv(struct hpi_message *phm, struct hpi_response *phr)
{
 hpi_send_recv_f(phm, phr, HOWNER_KERNEL);
}
