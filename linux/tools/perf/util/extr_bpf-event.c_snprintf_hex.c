
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (char*,size_t,char*,unsigned char) ;

__attribute__((used)) static int snprintf_hex(char *buf, size_t size, unsigned char *data, size_t len)
{
 int ret = 0;
 size_t i;

 for (i = 0; i < len; i++)
  ret += snprintf(buf + ret, size - ret, "%02x", data[i]);
 return ret;
}
