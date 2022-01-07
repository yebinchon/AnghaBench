
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (unsigned long const*) ;

void bitmap_free(const unsigned long *bitmap)
{
 kfree(bitmap);
}
