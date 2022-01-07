
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scnprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static int count_str_scnprintf(int idx, const char *str, char *bf, int size)
{
 return scnprintf(bf, size, "%s%s", (idx) ? " " : " (", str);
}
