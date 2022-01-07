
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int memset (char*,int ,size_t) ;
 size_t strscpy (char*,char const*,size_t) ;

ssize_t strscpy_pad(char *dest, const char *src, size_t count)
{
 ssize_t written;

 written = strscpy(dest, src, count);
 if (written < 0 || written == count - 1)
  return written;

 memset(dest + written + 1, 0, count - written - 1);

 return written;
}
