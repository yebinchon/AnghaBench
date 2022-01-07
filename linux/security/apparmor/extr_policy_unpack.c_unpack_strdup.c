
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ext {void* pos; } ;


 int GFP_KERNEL ;
 char* kmemdup (char const*,int,int ) ;
 int unpack_str (struct aa_ext*,char const**,char const*) ;

__attribute__((used)) static int unpack_strdup(struct aa_ext *e, char **string, const char *name)
{
 const char *tmp;
 void *pos = e->pos;
 int res = unpack_str(e, &tmp, name);
 *string = ((void*)0);

 if (!res)
  return 0;

 *string = kmemdup(tmp, res, GFP_KERNEL);
 if (!*string) {
  e->pos = pos;
  return 0;
 }

 return res;
}
