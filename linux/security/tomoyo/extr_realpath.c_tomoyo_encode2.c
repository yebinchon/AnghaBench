
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_NOFS ;
 char* kzalloc (int,int ) ;

char *tomoyo_encode2(const char *str, int str_len)
{
 int i;
 int len = 0;
 const char *p = str;
 char *cp;
 char *cp0;

 if (!p)
  return ((void*)0);
 for (i = 0; i < str_len; i++) {
  const unsigned char c = p[i];

  if (c == '\\')
   len += 2;
  else if (c > ' ' && c < 127)
   len++;
  else
   len += 4;
 }
 len++;

 cp = kzalloc(len + 10, GFP_NOFS);
 if (!cp)
  return ((void*)0);
 cp0 = cp;
 p = str;
 for (i = 0; i < str_len; i++) {
  const unsigned char c = p[i];

  if (c == '\\') {
   *cp++ = '\\';
   *cp++ = '\\';
  } else if (c > ' ' && c < 127) {
   *cp++ = c;
  } else {
   *cp++ = '\\';
   *cp++ = (c >> 6) + '0';
   *cp++ = ((c >> 3) & 7) + '0';
   *cp++ = (c & 7) + '0';
  }
 }
 return cp0;
}
