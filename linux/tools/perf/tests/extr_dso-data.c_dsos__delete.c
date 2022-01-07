
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int name; } ;


 int dso__put (struct dso*) ;
 struct dso** dsos ;
 int free (struct dso**) ;
 int unlink (int ) ;

__attribute__((used)) static void dsos__delete(int cnt)
{
 int i;

 for (i = 0; i < cnt; i++) {
  struct dso *dso = dsos[i];

  unlink(dso->name);
  dso__put(dso);
 }

 free(dsos);
}
