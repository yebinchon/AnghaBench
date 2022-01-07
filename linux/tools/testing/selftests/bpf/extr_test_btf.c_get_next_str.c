
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_next_str(const char *start, const char *end)
{
 return start < end - 1 ? start + 1 : ((void*)0);
}
