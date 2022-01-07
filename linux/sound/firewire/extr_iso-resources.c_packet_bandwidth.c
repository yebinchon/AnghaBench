
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN (unsigned int,int) ;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int SCODE_400 ;

__attribute__((used)) static unsigned int packet_bandwidth(unsigned int max_payload_bytes, int speed)
{
 unsigned int bytes, s400_bytes;


 bytes = 3 * 4 + ALIGN(max_payload_bytes, 4);


 if (speed <= SCODE_400)
  s400_bytes = bytes * (1 << (SCODE_400 - speed));
 else
  s400_bytes = DIV_ROUND_UP(bytes, 1 << (speed - SCODE_400));

 return s400_bytes;
}
