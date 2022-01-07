
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counted_str {char* name; int count; } ;
typedef int gfp_t ;


 struct counted_str* kmalloc (int,int ) ;
 int kref_init (int *) ;

char *aa_str_alloc(int size, gfp_t gfp)
{
 struct counted_str *str;

 str = kmalloc(sizeof(struct counted_str) + size, gfp);
 if (!str)
  return ((void*)0);

 kref_init(&str->count);
 return str->name;
}
