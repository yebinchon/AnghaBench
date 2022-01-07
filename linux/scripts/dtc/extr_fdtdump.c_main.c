
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_blob (char*) ;
 int fprintf (int ,char*) ;
 int stderr ;
 char* utilfdt_read (char*) ;

int main(int argc, char *argv[])
{
 char *buf;

 if (argc < 2) {
  fprintf(stderr, "supply input filename\n");
  return 5;
 }

 buf = utilfdt_read(argv[1]);
 if (buf)
  dump_blob(buf);
 else
  return 10;

 return 0;
}
