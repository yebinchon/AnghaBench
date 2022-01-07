
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

size_t strlcat(char *dest, const char *src, size_t count)
{
 size_t dsize = strlen(dest);
 size_t len = strlen(src);
 size_t res = dsize + len;


 BUG_ON(dsize >= count);

 dest += dsize;
 count -= dsize;
 if (len >= count)
  len = count-1;
 memcpy(dest, src, len);
 dest[len] = 0;
 return res;
}
