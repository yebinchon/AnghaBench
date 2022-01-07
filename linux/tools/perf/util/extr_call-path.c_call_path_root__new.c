
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call_path_root {int blocks; int call_path; } ;


 int INIT_LIST_HEAD (int *) ;
 int call_path__init (int *,int *,int *,int ,int) ;
 struct call_path_root* zalloc (int) ;

struct call_path_root *call_path_root__new(void)
{
 struct call_path_root *cpr;

 cpr = zalloc(sizeof(struct call_path_root));
 if (!cpr)
  return ((void*)0);
 call_path__init(&cpr->call_path, ((void*)0), ((void*)0), 0, 0);
 INIT_LIST_HEAD(&cpr->blocks);
 return cpr;
}
