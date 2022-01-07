
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * key_pass ;
 int strcpy (char*,int *) ;
 int strlen (int *) ;

__attribute__((used)) static int pem_pw_cb(char *buf, int len, int w, void *v)
{
 int pwlen;

 if (!key_pass)
  return -1;

 pwlen = strlen(key_pass);
 if (pwlen >= len)
  return -1;

 strcpy(buf, key_pass);


 key_pass = ((void*)0);

 return pwlen;
}
