
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool equal_fn(const void *a, const void *b, void *ctx)
{
 return (long)a == (long)b;
}
