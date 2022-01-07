
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static const char *retrieve_id_from_card_name(const char *name)
{
 const char *spos = name;

 while (*name) {
  if (isspace(*name) && isalnum(name[1]))
   spos = name + 1;
  name++;
 }
 return spos;
}
