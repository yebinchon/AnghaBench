
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int loaded; } ;



__attribute__((used)) static inline void dso__set_loaded(struct dso *dso)
{
 dso->loaded = 1;
}
