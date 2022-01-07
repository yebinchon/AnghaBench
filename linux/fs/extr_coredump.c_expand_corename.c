
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct core_name {char* corename; int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int core_name_size ;
 char* krealloc (char*,int,int ) ;
 int ksize (char*) ;

__attribute__((used)) static int expand_corename(struct core_name *cn, int size)
{
 char *corename = krealloc(cn->corename, size, GFP_KERNEL);

 if (!corename)
  return -ENOMEM;

 if (size > core_name_size)
  core_name_size = size;

 cn->size = ksize(corename);
 cn->corename = corename;
 return 0;
}
