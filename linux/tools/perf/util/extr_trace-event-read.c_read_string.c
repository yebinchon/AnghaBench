
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int BUFSIZ ;
 int STDOUT_FILENO ;
 int input_fd ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int pr_debug (char*) ;
 scalar_t__ read (int ,char*,int) ;
 scalar_t__ repipe ;
 int trace_data_size ;
 int write (int ,char*,int) ;

__attribute__((used)) static char *read_string(void)
{
 char buf[BUFSIZ];
 char *str = ((void*)0);
 int size = 0;
 off_t r;
 char c;

 for (;;) {
  r = read(input_fd, &c, 1);
  if (r < 0) {
   pr_debug("reading input file");
   goto out;
  }

  if (!r) {
   pr_debug("no data");
   goto out;
  }

  if (repipe) {
   int retw = write(STDOUT_FILENO, &c, 1);

   if (retw <= 0 || retw != r) {
    pr_debug("repiping input file string");
    goto out;
   }
  }

  buf[size++] = c;

  if (!c)
   break;
 }

 trace_data_size += size;

 str = malloc(size);
 if (str)
  memcpy(str, buf, size);
out:
 return str;
}
