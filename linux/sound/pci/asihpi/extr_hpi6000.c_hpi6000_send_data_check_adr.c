
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MSG_ADDRESS ;
 scalar_t__ QUEUE_SIZE ;
 scalar_t__ QUEUE_START ;

__attribute__((used)) static short hpi6000_send_data_check_adr(u32 address, u32 length_in_dwords)
{
 (void)address;
 (void)length_in_dwords;
 return 1;

}
