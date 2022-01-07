
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {void* flags; int read_4; int read_8; } ;


 void* KBUFFER_FL_BIG_ENDIAN ;



 int __read_4 ;
 int __read_4_sw ;
 int __read_8 ;
 int __read_8_sw ;
 scalar_t__ host_is_bigendian () ;
 int translate_data (struct kbuffer*,void*,void**,unsigned long long*,int*) ;

void *kbuffer_translate_data(int swap, void *data, unsigned int *size)
{
 unsigned long long delta;
 struct kbuffer kbuf;
 int type_len;
 int length;
 void *ptr;

 if (swap) {
  kbuf.read_8 = __read_8_sw;
  kbuf.read_4 = __read_4_sw;
  kbuf.flags = host_is_bigendian() ? 0 : KBUFFER_FL_BIG_ENDIAN;
 } else {
  kbuf.read_8 = __read_8;
  kbuf.read_4 = __read_4;
  kbuf.flags = host_is_bigendian() ? KBUFFER_FL_BIG_ENDIAN: 0;
 }

 type_len = translate_data(&kbuf, data, &ptr, &delta, &length);
 switch (type_len) {
 case 130:
 case 129:
 case 128:
  return ((void*)0);
 };

 *size = length;

 return ptr;
}
