
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotated_source {int source; } ;


 int INIT_LIST_HEAD (int *) ;
 struct annotated_source* zalloc (int) ;

__attribute__((used)) static struct annotated_source *annotated_source__new(void)
{
 struct annotated_source *src = zalloc(sizeof(*src));

 if (src != ((void*)0))
  INIT_LIST_HEAD(&src->source);

 return src;
}
