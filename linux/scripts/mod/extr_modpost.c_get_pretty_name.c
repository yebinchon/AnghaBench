
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void get_pretty_name(int is_func, const char** name, const char** name_p)
{
 switch (is_func) {
 case 0: *name = "variable"; *name_p = ""; break;
 case 1: *name = "function"; *name_p = "()"; break;
 default: *name = "(unknown reference)"; *name_p = ""; break;
 }
}
