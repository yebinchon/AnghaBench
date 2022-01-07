
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* strchr (unsigned char const*,char) ;
 int strlen (unsigned char const*) ;
 int tomoyo_correct_word2 (unsigned char const*,int) ;

bool tomoyo_domain_def(const unsigned char *buffer)
{
 const unsigned char *cp;
 int len;

 if (*buffer != '<')
  return 0;
 cp = strchr(buffer, ' ');
 if (!cp)
  len = strlen(buffer);
 else
  len = cp - buffer;
 if (buffer[len - 1] != '>' ||
     !tomoyo_correct_word2(buffer + 1, len - 2))
  return 0;
 return 1;
}
