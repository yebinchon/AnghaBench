
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {scalar_t__* utf8nfdi; unsigned int* utf32nfdi; unsigned int* utf32nfdicf; void* utf8nfdicf; } ;


 scalar_t__ HANGUL ;
 int assert (int) ;
 scalar_t__ strcmp (scalar_t__*,char*) ;
 void* strdup (char*) ;
 int utf8encode (char*,unsigned int) ;

__attribute__((used)) static void utf8_create(struct unicode_data *data)
{
 char utf[18*4+1];
 char *u;
 unsigned int *um;
 int i;

 if (data->utf8nfdi) {
  assert(data->utf8nfdi[0] == HANGUL);
  return;
 }

 u = utf;
 um = data->utf32nfdi;
 if (um) {
  for (i = 0; um[i]; i++)
   u += utf8encode(u, um[i]);
  *u = '\0';
  data->utf8nfdi = strdup(utf);
 }
 u = utf;
 um = data->utf32nfdicf;
 if (um) {
  for (i = 0; um[i]; i++)
   u += utf8encode(u, um[i]);
  *u = '\0';
  if (!data->utf8nfdi || strcmp(data->utf8nfdi, utf))
   data->utf8nfdicf = strdup(utf);
 }
}
