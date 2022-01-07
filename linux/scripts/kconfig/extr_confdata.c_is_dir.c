
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static bool is_dir(const char *path)
{
 struct stat st;

 if (stat(path, &st))
  return 0;

 return S_ISDIR(st.st_mode);
}
