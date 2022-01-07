
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,unsigned int) ;
 int memset (char*,char,unsigned int) ;

__attribute__((used)) static void move_right(char *buf, char *end, unsigned len, unsigned spaces)
{
 size_t size;
 if (buf >= end)
  return;
 size = end - buf;
 if (size <= spaces) {
  memset(buf, ' ', size);
  return;
 }
 if (len) {
  if (len > size - spaces)
   len = size - spaces;
  memmove(buf + spaces, buf, len);
 }
 memset(buf, ' ', spaces);
}
