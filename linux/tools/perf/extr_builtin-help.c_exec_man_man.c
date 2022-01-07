
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exec_failed (char const*) ;
 int execlp (char const*,char*,char const*,int *) ;

__attribute__((used)) static void exec_man_man(const char *path, const char *page)
{
 if (!path)
  path = "man";
 execlp(path, "man", page, ((void*)0));
 exec_failed(path);
}
