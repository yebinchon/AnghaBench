
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_random_bytes (unsigned char*,int) ;

void generate_random_uuid(unsigned char uuid[16])
{
 get_random_bytes(uuid, 16);

 uuid[6] = (uuid[6] & 0x0F) | 0x40;

 uuid[8] = (uuid[8] & 0x3F) | 0x80;
}
