
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADMSG ;
 int ENOBUFS ;
 int snprintf (char*,size_t,char*,...) ;

int sprint_oid(const void *data, size_t datasize, char *buffer, size_t bufsize)
{
 const unsigned char *v = data, *end = v + datasize;
 unsigned long num;
 unsigned char n;
 size_t ret;
 int count;

 if (v >= end)
  goto bad;

 n = *v++;
 ret = count = snprintf(buffer, bufsize, "%u.%u", n / 40, n % 40);
 if (count >= bufsize)
  return -ENOBUFS;
 buffer += count;
 bufsize -= count;

 while (v < end) {
  num = 0;
  n = *v++;
  if (!(n & 0x80)) {
   num = n;
  } else {
   num = n & 0x7f;
   do {
    if (v >= end)
     goto bad;
    n = *v++;
    num <<= 7;
    num |= n & 0x7f;
   } while (n & 0x80);
  }
  ret += count = snprintf(buffer, bufsize, ".%lu", num);
  if (count >= bufsize)
   return -ENOBUFS;
  buffer += count;
  bufsize -= count;
 }

 return ret;

bad:
 snprintf(buffer, bufsize, "(bad)");
 return -EBADMSG;
}
