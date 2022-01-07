
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_ARGCOUNT ;
 int kdb_printf (char*,...) ;

__attribute__((used)) static int kdb_hello_cmd(int argc, const char **argv)
{
 if (argc > 1)
  return KDB_ARGCOUNT;

 if (argc)
  kdb_printf("Hello %s.\n", argv[1]);
 else
  kdb_printf("Hello world!\n");

 return 0;
}
