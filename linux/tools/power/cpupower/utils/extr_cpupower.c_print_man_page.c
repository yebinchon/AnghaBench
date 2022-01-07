
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int execlp (char*,char*,char*,int *) ;
 char* malloc (int) ;
 int sprintf (char*,char*) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int print_man_page(const char *subpage)
{
 int len;
 char *page;

 len = 10;
 if (subpage != ((void*)0))
  len += strlen(subpage);

 page = malloc(len);
 if (!page)
  return -ENOMEM;

 sprintf(page, "cpupower");
 if ((subpage != ((void*)0)) && strcmp(subpage, "help")) {
  strcat(page, "-");
  strcat(page, subpage);
 }

 execlp("man", "man", page, ((void*)0));


 return -EINVAL;
}
