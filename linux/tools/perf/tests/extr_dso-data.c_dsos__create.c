
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_VAL (char*,...) ;
 char* dso__new (char*) ;
 char** dsos ;
 char** malloc (int) ;
 char* test_file (int) ;

__attribute__((used)) static int dsos__create(int cnt, int size)
{
 int i;

 dsos = malloc(sizeof(*dsos) * cnt);
 TEST_ASSERT_VAL("failed to alloc dsos array", dsos);

 for (i = 0; i < cnt; i++) {
  char *file;

  file = test_file(size);
  TEST_ASSERT_VAL("failed to get dso file", file);

  dsos[i] = dso__new(file);
  TEST_ASSERT_VAL("failed to get dso", dsos[i]);
 }

 return 0;
}
