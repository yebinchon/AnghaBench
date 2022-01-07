
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN (int,char*,char,char) ;
 int is_an_alpha2 (char*) ;
 int is_world_regdom (char*) ;
 char* user_alpha2 ;

__attribute__((used)) static bool is_user_regdom_saved(void)
{
 if (user_alpha2[0] == '9' && user_alpha2[1] == '7')
  return 0;


 if (WARN(!is_world_regdom(user_alpha2) && !is_an_alpha2(user_alpha2),
   "Unexpected user alpha2: %c%c\n",
   user_alpha2[0], user_alpha2[1]))
  return 0;

 return 1;
}
