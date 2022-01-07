
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copyfile_mode (char const*,char const*,int) ;

int copyfile(const char *from, const char *to)
{
 return copyfile_mode(from, to, 0755);
}
