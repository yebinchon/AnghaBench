
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (size_t*) ;
 size_t* digital_payload_bits_map ;

__attribute__((used)) static u8 digital_payload_bits_to_size(u8 payload_bits)
{
 if (payload_bits >= ARRAY_SIZE(digital_payload_bits_map))
  return 0;

 return digital_payload_bits_map[payload_bits];
}
