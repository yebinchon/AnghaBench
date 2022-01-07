
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int dedup_tests ;
 int file_tests ;
 int fprintf (int ,char*,char const*,int ,int ,int ,int ,int ) ;
 int get_info_tests ;
 int info_raw_tests ;
 int raw_tests ;
 int stderr ;

__attribute__((used)) static void usage(const char *cmd)
{
 fprintf(stderr, "Usage: %s [-l] [[-r btf_raw_test_num (1 - %zu)] |\n"
   "\t[-g btf_get_info_test_num (1 - %zu)] |\n"
   "\t[-f btf_file_test_num (1 - %zu)] |\n"
   "\t[-k btf_prog_info_raw_test_num (1 - %zu)] |\n"
   "\t[-p (pretty print test)] |\n"
   "\t[-d btf_dedup_test_num (1 - %zu)]]\n",
  cmd, ARRAY_SIZE(raw_tests), ARRAY_SIZE(get_info_tests),
  ARRAY_SIZE(file_tests), ARRAY_SIZE(info_raw_tests),
  ARRAY_SIZE(dedup_tests));
}
