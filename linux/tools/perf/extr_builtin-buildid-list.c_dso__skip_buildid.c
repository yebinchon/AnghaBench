
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int hit; } ;



__attribute__((used)) static bool dso__skip_buildid(struct dso *dso, int with_hits)
{
 return with_hits && !dso->hit;
}
