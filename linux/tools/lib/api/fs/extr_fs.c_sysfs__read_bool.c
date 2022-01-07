
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int sysfs__read_str (char const*,char**,size_t*) ;

int sysfs__read_bool(const char *entry, bool *value)
{
 char *buf;
 size_t size;
 int ret;

 ret = sysfs__read_str(entry, &buf, &size);
 if (ret < 0)
  return ret;

 switch (buf[0]) {
 case '1':
 case 'y':
 case 'Y':
  *value = 1;
  break;
 case '0':
 case 'n':
 case 'N':
  *value = 0;
  break;
 default:
  ret = -1;
 }

 free(buf);

 return ret;
}
