
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (void const*,void const*) ;

__attribute__((used)) static bool str_equal_fn(const void *a, const void *b, void *ctx)
{
 return strcmp(a, b) == 0;
}
