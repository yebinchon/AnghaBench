
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ext {void* pos; } ;


 int AA_STRING ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char const*) ;
 size_t unpack_u16_chunk (struct aa_ext*,char**) ;

__attribute__((used)) static int unpack_str(struct aa_ext *e, const char **string, const char *name)
{
 char *src_str;
 size_t size = 0;
 void *pos = e->pos;
 *string = ((void*)0);
 if (unpack_nameX(e, AA_STRING, name)) {
  size = unpack_u16_chunk(e, &src_str);
  if (size) {

   if (src_str[size - 1] != 0)
    goto fail;
   *string = src_str;

   return size;
  }
 }

fail:
 e->pos = pos;
 return 0;
}
