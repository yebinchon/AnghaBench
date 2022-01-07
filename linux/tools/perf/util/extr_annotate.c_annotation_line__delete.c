
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotation_line {void* privsize; int line; int path; } ;


 int free (void*) ;
 int free_srcline (int ) ;
 int zfree (int *) ;

__attribute__((used)) static void annotation_line__delete(struct annotation_line *al)
{
 void *ptr = (void *) al - al->privsize;

 free_srcline(al->path);
 zfree(&al->line);
 free(ptr);
}
