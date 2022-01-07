
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {int dummy; } ;





 unsigned long long TS_SHIFT ;
 int read_4 (struct kbuffer*,void*) ;
 unsigned long long ts4host (struct kbuffer*,unsigned int) ;
 unsigned int type_len4host (struct kbuffer*,unsigned int) ;

__attribute__((used)) static unsigned int
translate_data(struct kbuffer *kbuf, void *data, void **rptr,
        unsigned long long *delta, int *length)
{
 unsigned long long extend;
 unsigned int type_len_ts;
 unsigned int type_len;

 type_len_ts = read_4(kbuf, data);
 data += 4;

 type_len = type_len4host(kbuf, type_len_ts);
 *delta = ts4host(kbuf, type_len_ts);

 switch (type_len) {
 case 130:
  *length = read_4(kbuf, data);
  break;

 case 129:
  extend = read_4(kbuf, data);
  data += 4;
  extend <<= TS_SHIFT;
  extend += *delta;
  *delta = extend;
  *length = 0;
  break;

 case 128:
  data += 12;
  *length = 0;
  break;
 case 0:
  *length = read_4(kbuf, data) - 4;
  *length = (*length + 3) & ~3;
  data += 4;
  break;
 default:
  *length = type_len * 4;
  break;
 }

 *rptr = data;

 return type_len;
}
