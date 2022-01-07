
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ext {void* pos; } ;
typedef enum aa_code { ____Placeholder_aa_code } aa_code ;


 int AA_NAME ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ unpack_X (struct aa_ext*,int) ;
 size_t unpack_u16_chunk (struct aa_ext*,char**) ;

__attribute__((used)) static bool unpack_nameX(struct aa_ext *e, enum aa_code code, const char *name)
{



 void *pos = e->pos;




 if (unpack_X(e, AA_NAME)) {
  char *tag = ((void*)0);
  size_t size = unpack_u16_chunk(e, &tag);

  if (name && (!size || tag[size-1] != '\0' || strcmp(name, tag)))
   goto fail;
 } else if (name) {

  goto fail;
 }


 if (unpack_X(e, code))
  return 1;

fail:
 e->pos = pos;
 return 0;
}
