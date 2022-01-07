
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,void*) ;

__attribute__((used)) static void FILE__write_graph(void *fp, int graph)
{
 const char *s;
 switch (graph) {

 case 131: s = "↓"; break;
 case 128: s = "↑"; break;
 case 130: s = "←"; break;
 case 129: s = "→"; break;
 default: s = "?"; break;
 }

 fputs(s, fp);
}
