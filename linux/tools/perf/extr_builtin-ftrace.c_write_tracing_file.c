
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __write_tracing_file (char const*,char const*,int) ;

__attribute__((used)) static int write_tracing_file(const char *name, const char *val)
{
 return __write_tracing_file(name, val, 0);
}
