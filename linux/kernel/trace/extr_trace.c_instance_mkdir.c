
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTR_ERR_OR_ZERO (int ) ;
 int trace_array_create (char const*) ;

__attribute__((used)) static int instance_mkdir(const char *name)
{
 return PTR_ERR_OR_ZERO(trace_array_create(name));
}
