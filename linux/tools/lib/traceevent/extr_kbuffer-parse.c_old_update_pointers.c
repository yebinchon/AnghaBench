
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int curr; int next; int size; int index; unsigned int timestamp; void* data; } ;





 unsigned long long TS_SHIFT ;
 int calc_index (struct kbuffer*,void*) ;
 unsigned int len4host (struct kbuffer*,unsigned int) ;
 void* read_4 (struct kbuffer*,void*) ;
 unsigned int ts4host (struct kbuffer*,unsigned int) ;
 unsigned int type4host (struct kbuffer*,unsigned int) ;

__attribute__((used)) static unsigned int old_update_pointers(struct kbuffer *kbuf)
{
 unsigned long long extend;
 unsigned int type_len_ts;
 unsigned int type;
 unsigned int len;
 unsigned int delta;
 unsigned int length;
 void *ptr = kbuf->data + kbuf->curr;

 type_len_ts = read_4(kbuf, ptr);
 ptr += 4;

 type = type4host(kbuf, type_len_ts);
 len = len4host(kbuf, type_len_ts);
 delta = ts4host(kbuf, type_len_ts);

 switch (type) {
 case 130:
  kbuf->next = kbuf->size;
  return 0;

 case 129:
  extend = read_4(kbuf, ptr);
  extend <<= TS_SHIFT;
  extend += delta;
  delta = extend;
  ptr += 4;
  length = 0;
  break;

 case 128:

  kbuf->curr = kbuf->size;
  kbuf->next = kbuf->size;
  kbuf->index = kbuf->size;
  return -1;
 default:
  if (len)
   length = len * 4;
  else {
   length = read_4(kbuf, ptr);
   length -= 4;
   ptr += 4;
  }
  break;
 }

 kbuf->timestamp += delta;
 kbuf->index = calc_index(kbuf, ptr);
 kbuf->next = kbuf->index + length;

 return type;
}
