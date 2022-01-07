
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int combine_quad (unsigned char*) ;
 unsigned int combine_triple (unsigned char*) ;
 unsigned int combine_word (unsigned char*) ;

unsigned int snd_usb_combine_bytes(unsigned char *bytes, int size)
{
 switch (size) {
 case 1: return *bytes;
 case 2: return combine_word(bytes);
 case 3: return combine_triple(bytes);
 case 4: return combine_quad(bytes);
 default: return 0;
 }
}
