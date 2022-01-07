
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int filename__read_ull_base (char const*,unsigned long long*,int) ;

int filename__read_xll(const char *filename, unsigned long long *value)
{
 return filename__read_ull_base(filename, value, 16);
}
