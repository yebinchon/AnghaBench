
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int AA_ERROR (char*,char const*,char*) ;
 int EINVAL ;
 char* ERR_PTR (int ) ;
 int simple_strtoull (char*,char**,int) ;

__attribute__((used)) static char *split_token_from_name(const char *op, char *args, u64 *token)
{
 char *name;

 *token = simple_strtoull(args, &name, 16);
 if ((name == args) || *name != '^') {
  AA_ERROR("%s: Invalid input '%s'", op, args);
  return ERR_PTR(-EINVAL);
 }

 name++;
 if (!*name)
  name = ((void*)0);
 return name;
}
