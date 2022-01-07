
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int always_log; int file_test_num; int file_test; int raw_test_num; int raw_test; int get_info_test_num; int get_info_test; int pprint_test; int info_raw_test_num; int info_raw_test; int dedup_test_num; int dedup_test; } ;


 int ARRAY_SIZE (int ) ;
 TYPE_1__ args ;
 void* atoi (int ) ;
 int dedup_tests ;
 int exit (int ) ;
 int file_tests ;
 int fprintf (int ,char*,int) ;
 int get_info_tests ;
 int getopt (int,char**,char const*) ;
 int info_raw_tests ;
 int optarg ;
 int raw_tests ;
 int stderr ;
 int usage (char*) ;

__attribute__((used)) static int parse_args(int argc, char **argv)
{
 const char *optstr = "hlpk:f:r:g:d:";
 int opt;

 while ((opt = getopt(argc, argv, optstr)) != -1) {
  switch (opt) {
  case 'l':
   args.always_log = 1;
   break;
  case 'f':
   args.file_test_num = atoi(optarg);
   args.file_test = 1;
   break;
  case 'r':
   args.raw_test_num = atoi(optarg);
   args.raw_test = 1;
   break;
  case 'g':
   args.get_info_test_num = atoi(optarg);
   args.get_info_test = 1;
   break;
  case 'p':
   args.pprint_test = 1;
   break;
  case 'k':
   args.info_raw_test_num = atoi(optarg);
   args.info_raw_test = 1;
   break;
  case 'd':
   args.dedup_test_num = atoi(optarg);
   args.dedup_test = 1;
   break;
  case 'h':
   usage(argv[0]);
   exit(0);
  default:
   usage(argv[0]);
   return -1;
  }
 }

 if (args.raw_test_num &&
     (args.raw_test_num < 1 ||
      args.raw_test_num > ARRAY_SIZE(raw_tests))) {
  fprintf(stderr, "BTF raw test number must be [1 - %zu]\n",
   ARRAY_SIZE(raw_tests));
  return -1;
 }

 if (args.file_test_num &&
     (args.file_test_num < 1 ||
      args.file_test_num > ARRAY_SIZE(file_tests))) {
  fprintf(stderr, "BTF file test number must be [1 - %zu]\n",
   ARRAY_SIZE(file_tests));
  return -1;
 }

 if (args.get_info_test_num &&
     (args.get_info_test_num < 1 ||
      args.get_info_test_num > ARRAY_SIZE(get_info_tests))) {
  fprintf(stderr, "BTF get info test number must be [1 - %zu]\n",
   ARRAY_SIZE(get_info_tests));
  return -1;
 }

 if (args.info_raw_test_num &&
     (args.info_raw_test_num < 1 ||
      args.info_raw_test_num > ARRAY_SIZE(info_raw_tests))) {
  fprintf(stderr, "BTF prog info raw test number must be [1 - %zu]\n",
   ARRAY_SIZE(info_raw_tests));
  return -1;
 }

 if (args.dedup_test_num &&
     (args.dedup_test_num < 1 ||
      args.dedup_test_num > ARRAY_SIZE(dedup_tests))) {
  fprintf(stderr, "BTF dedup test number must be [1 - %zu]\n",
   ARRAY_SIZE(dedup_tests));
  return -1;
 }

 return 0;
}
