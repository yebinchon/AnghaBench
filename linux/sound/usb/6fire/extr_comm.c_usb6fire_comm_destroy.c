
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfire_chip {struct comm_runtime* comm; } ;
struct comm_runtime {struct comm_runtime* receiver_buffer; } ;


 int kfree (struct comm_runtime*) ;

void usb6fire_comm_destroy(struct sfire_chip *chip)
{
 struct comm_runtime *rt = chip->comm;

 kfree(rt->receiver_buffer);
 kfree(rt);
 chip->comm = ((void*)0);
}
