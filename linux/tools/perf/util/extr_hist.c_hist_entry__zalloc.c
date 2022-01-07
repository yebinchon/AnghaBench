
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int dummy; } ;


 void* zalloc (size_t) ;

__attribute__((used)) static void *hist_entry__zalloc(size_t size)
{
 return zalloc(size + sizeof(struct hist_entry));
}
