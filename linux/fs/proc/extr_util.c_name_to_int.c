
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char* name; int len; } ;



unsigned name_to_int(const struct qstr *qstr)
{
 const char *name = qstr->name;
 int len = qstr->len;
 unsigned n = 0;

 if (len > 1 && *name == '0')
  goto out;
 do {
  unsigned c = *name++ - '0';
  if (c > 9)
   goto out;
  if (n >= (~0U-9)/10)
   goto out;
  n *= 10;
  n += c;
 } while (--len > 0);
 return n;
out:
 return ~0U;
}
