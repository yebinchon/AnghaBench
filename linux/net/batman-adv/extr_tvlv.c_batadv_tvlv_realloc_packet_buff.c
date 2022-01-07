
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static bool batadv_tvlv_realloc_packet_buff(unsigned char **packet_buff,
         int *packet_buff_len,
         int min_packet_len,
         int additional_packet_len)
{
 unsigned char *new_buff;

 new_buff = kmalloc(min_packet_len + additional_packet_len, GFP_ATOMIC);


 if (!new_buff)
  return 0;

 memcpy(new_buff, *packet_buff, min_packet_len);
 kfree(*packet_buff);
 *packet_buff = new_buff;
 *packet_buff_len = min_packet_len + additional_packet_len;

 return 1;
}
