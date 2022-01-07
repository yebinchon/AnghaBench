
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int dummy; } ;


 int copyfile_mode_ns (char const*,char const*,int,struct nsinfo*) ;

int copyfile_ns(const char *from, const char *to, struct nsinfo *nsi)
{
 return copyfile_mode_ns(from, to, 0755, nsi);
}
