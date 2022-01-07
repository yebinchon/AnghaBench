
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static void str2hashbuf_unsigned(const char *msg, int len, __u32 *buf, int num)
{
 __u32 pad, val;
 int i;
 const unsigned char *ucp = (const unsigned char *) msg;

 pad = (__u32)len | ((__u32)len << 8);
 pad |= pad << 16;

 val = pad;
 if (len > num*4)
  len = num * 4;
 for (i = 0; i < len; i++) {
  val = ((int) ucp[i]) + (val << 8);
  if ((i % 4) == 3) {
   *buf++ = val;
   val = pad;
   num--;
  }
 }
 if (--num >= 0)
  *buf++ = val;
 while (--num >= 0)
  *buf++ = pad;
}
