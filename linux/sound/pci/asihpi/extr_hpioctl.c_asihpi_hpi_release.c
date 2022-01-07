
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {int dummy; } ;
struct hpi_message {int dummy; } ;
struct file {int dummy; } ;


 int HPI_OBJ_SUBSYSTEM ;
 int HPI_SUBSYS_CLOSE ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv_ex (struct hpi_message*,struct hpi_response*,struct file*) ;

int asihpi_hpi_release(struct file *file)
{
 struct hpi_message hm;
 struct hpi_response hr;



 hpi_init_message_response(&hm, &hr, HPI_OBJ_SUBSYSTEM,
  HPI_SUBSYS_CLOSE);
 hpi_send_recv_ex(&hm, &hr, file);
 return 0;
}
