
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_range {int line_list; int comp_dir; int path; int file; int function; } ;


 int intlist__delete (int ) ;
 int zfree (int *) ;

void line_range__clear(struct line_range *lr)
{
 zfree(&lr->function);
 zfree(&lr->file);
 zfree(&lr->path);
 zfree(&lr->comp_dir);
 intlist__delete(lr->line_list);
}
