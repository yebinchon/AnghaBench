
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdif {int dummy; } ;


 int E2SINK_MAX ;
 int getsourcesink (struct cmdif*,int,int,unsigned char*,unsigned char*) ;

__attribute__((used)) static int getpaths(struct cmdif *cif, unsigned char *o)
{
 unsigned char src[E2SINK_MAX];
 unsigned char sink[E2SINK_MAX];
 int i, j = 0;

 for (i = 0; i < E2SINK_MAX; i++) {
  getsourcesink(cif, i, i, &src[i], &sink[i]);
  if (sink[i] < E2SINK_MAX) {
   o[j++] = sink[i];
   o[j++] = i;
  }
 }
 return j;
}
