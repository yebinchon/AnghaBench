
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_range {int line_list; } ;


 int ENOMEM ;
 int intlist__new (int *) ;
 int memset (struct line_range*,int ,int) ;

int line_range__init(struct line_range *lr)
{
 memset(lr, 0, sizeof(*lr));
 lr->line_list = intlist__new(((void*)0));
 if (!lr->line_list)
  return -ENOMEM;
 else
  return 0;
}
