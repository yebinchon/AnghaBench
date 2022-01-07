
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 char* strerror (int) ;
 int utilfdt_read_err (char const*,char**,size_t*) ;

char *utilfdt_read(const char *filename, size_t *len)
{
 char *buff;
 int ret = utilfdt_read_err(filename, &buff, len);

 if (ret) {
  fprintf(stderr, "Couldn't open blob from '%s': %s\n", filename,
   strerror(ret));
  return ((void*)0);
 }

 return buff;
}
