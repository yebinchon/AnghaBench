
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int flags; } ;


 int KBUFFER_FL_BIG_ENDIAN ;

__attribute__((used)) static unsigned int type4host(struct kbuffer *kbuf,
         unsigned int type_len_ts)
{
 if (kbuf->flags & KBUFFER_FL_BIG_ENDIAN)
  return (type_len_ts >> 29) & 3;
 else
  return type_len_ts & 3;
}
