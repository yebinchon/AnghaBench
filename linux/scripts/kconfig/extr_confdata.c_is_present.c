
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int stat (char const*,struct stat*) ;

__attribute__((used)) static bool is_present(const char *path)
{
 struct stat st;

 return !stat(path, &st);
}
