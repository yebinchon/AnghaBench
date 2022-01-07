
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct automic_entry {scalar_t__ attr; } ;



__attribute__((used)) static int compare_attr(const void *ap, const void *bp)
{
 const struct automic_entry *a = ap;
 const struct automic_entry *b = bp;
 return (int)(a->attr - b->attr);
}
