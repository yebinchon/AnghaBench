
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int flags; } ;


 int ENDIAN_MASK ;
 int KBUFFER_FL_HOST_BIG_ENDIAN ;

__attribute__((used)) static int do_swap(struct kbuffer *kbuf)
{
 return ((kbuf->flags & KBUFFER_FL_HOST_BIG_ENDIAN) + kbuf->flags) &
  ENDIAN_MASK;
}
