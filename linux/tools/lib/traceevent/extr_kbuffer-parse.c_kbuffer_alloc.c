
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int flags; int next_event; int read_long; int read_4; int read_8; } ;
typedef enum kbuffer_long_size { ____Placeholder_kbuffer_long_size } kbuffer_long_size ;
typedef enum kbuffer_endian { ____Placeholder_kbuffer_endian } kbuffer_endian ;




 int KBUFFER_FL_BIG_ENDIAN ;
 int KBUFFER_FL_HOST_BIG_ENDIAN ;
 int KBUFFER_FL_LONG_8 ;


 int __next_event ;
 int __read_4 ;
 int __read_4_sw ;
 int __read_8 ;
 int __read_8_sw ;
 int __read_long_4 ;
 int __read_long_8 ;
 scalar_t__ do_swap (struct kbuffer*) ;
 scalar_t__ host_is_bigendian () ;
 struct kbuffer* zmalloc (int) ;

struct kbuffer *
kbuffer_alloc(enum kbuffer_long_size size, enum kbuffer_endian endian)
{
 struct kbuffer *kbuf;
 int flags = 0;

 switch (size) {
 case 129:
  break;
 case 128:
  flags |= KBUFFER_FL_LONG_8;
  break;
 default:
  return ((void*)0);
 }

 switch (endian) {
 case 130:
  break;
 case 131:
  flags |= KBUFFER_FL_BIG_ENDIAN;
  break;
 default:
  return ((void*)0);
 }

 kbuf = zmalloc(sizeof(*kbuf));
 if (!kbuf)
  return ((void*)0);

 kbuf->flags = flags;

 if (host_is_bigendian())
  kbuf->flags |= KBUFFER_FL_HOST_BIG_ENDIAN;

 if (do_swap(kbuf)) {
  kbuf->read_8 = __read_8_sw;
  kbuf->read_4 = __read_4_sw;
 } else {
  kbuf->read_8 = __read_8;
  kbuf->read_4 = __read_4;
 }

 if (kbuf->flags & KBUFFER_FL_LONG_8)
  kbuf->read_long = __read_long_8;
 else
  kbuf->read_long = __read_long_4;


 kbuf->next_event = __next_event;

 return kbuf;
}
