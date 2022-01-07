
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 char* kmalloc_track_caller (size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;

char *kmemdup_nul(const char *s, size_t len, gfp_t gfp)
{
 char *buf;

 if (!s)
  return ((void*)0);

 buf = kmalloc_track_caller(len + 1, gfp);
 if (buf) {
  memcpy(buf, s, len);
  buf[len] = '\0';
 }
 return buf;
}
