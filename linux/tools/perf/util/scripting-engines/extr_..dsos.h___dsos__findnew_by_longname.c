
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct dso {int dummy; } ;


 struct dso* __dsos__findnew_link_by_longname (struct rb_root*,int *,char const*) ;

__attribute__((used)) static inline struct dso *__dsos__findnew_by_longname(struct rb_root *root, const char *name)
{
 return __dsos__findnew_link_by_longname(root, ((void*)0), name);
}
