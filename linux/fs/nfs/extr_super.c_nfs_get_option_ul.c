
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int ENOMEM ;
 int kfree (char*) ;
 int kstrtoul (char*,int,unsigned long*) ;
 char* match_strdup (int *) ;

__attribute__((used)) static int nfs_get_option_ul(substring_t args[], unsigned long *option)
{
 int rc;
 char *string;

 string = match_strdup(args);
 if (string == ((void*)0))
  return -ENOMEM;
 rc = kstrtoul(string, 10, option);
 kfree(string);

 return rc;
}
