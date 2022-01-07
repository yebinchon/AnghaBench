
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ksym {int dummy; } ;
typedef int buf ;
struct TYPE_3__ {long addr; int name; } ;
typedef int FILE ;


 int ENOENT ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int ksym_cmp ;
 int qsort (TYPE_1__*,int,int,int ) ;
 int sscanf (char*,char*,void**,char*,char*) ;
 int strdup (char*) ;
 int sym_cnt ;
 TYPE_1__* syms ;

int load_kallsyms(void)
{
 FILE *f = fopen("/proc/kallsyms", "r");
 char func[256], buf[256];
 char symbol;
 void *addr;
 int i = 0;

 if (!f)
  return -ENOENT;

 while (fgets(buf, sizeof(buf), f)) {
  if (sscanf(buf, "%p %c %s", &addr, &symbol, func) != 3)
   break;
  if (!addr)
   continue;
  syms[i].addr = (long) addr;
  syms[i].name = strdup(func);
  i++;
 }
 fclose(f);
 sym_cnt = i;
 qsort(syms, sym_cnt, sizeof(struct ksym), ksym_cmp);
 return 0;
}
