
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int dummy; } ;


 int dso__put (struct dso*) ;

__attribute__((used)) static inline void __dso__zput(struct dso **dso)
{
 dso__put(*dso);
 *dso = ((void*)0);
}
