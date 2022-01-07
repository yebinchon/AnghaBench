
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int ) ;
 unsigned int atoi (char*) ;
 int do_test (unsigned int,unsigned int) ;
 int tests ;

int main(int argc, char **argv)
{
 unsigned int from = 0, to = ARRAY_SIZE(tests);

 if (argc == 3) {
  unsigned int l = atoi(argv[argc - 2]);
  unsigned int u = atoi(argv[argc - 1]);

  if (l < to && u < to) {
   from = l;
   to = u + 1;
  }
 } else if (argc == 2) {
  unsigned int t = atoi(argv[argc - 1]);

  if (t < to) {
   from = t;
   to = t + 1;
  }
 }
 return do_test(from, to);
}
