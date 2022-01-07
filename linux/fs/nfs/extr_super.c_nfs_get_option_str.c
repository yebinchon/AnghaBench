
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int kfree (char*) ;
 char* match_strdup (int *) ;

__attribute__((used)) static int nfs_get_option_str(substring_t args[], char **option)
{
 kfree(*option);
 *option = match_strdup(args);
 return !*option;
}
