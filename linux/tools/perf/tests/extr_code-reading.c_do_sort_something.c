
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int comp ;
 int pr_debug (char*) ;
 int qsort (int*,int,int,int ) ;

__attribute__((used)) static void do_sort_something(void)
{
 int buf[40960], i;

 for (i = 0; i < (int)ARRAY_SIZE(buf); i++)
  buf[i] = ARRAY_SIZE(buf) - i - 1;

 qsort(buf, ARRAY_SIZE(buf), sizeof(int), comp);

 for (i = 0; i < (int)ARRAY_SIZE(buf); i++) {
  if (buf[i] != i) {
   pr_debug("qsort failed\n");
   break;
  }
 }
}
