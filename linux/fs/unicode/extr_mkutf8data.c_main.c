
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int code; } ;


 int age_init () ;
 void* age_name ;
 char* argv0 ;
 int ccc_init () ;
 void* ccc_name ;
 int corrections_init () ;
 void* data_name ;
 int exit (int ) ;
 void* fold_name ;
 int getopt (int,char**,char*) ;
 int hangul_decompose () ;
 int help () ;
 int ignore_init () ;
 int lookup (int ,char*) ;
 int nfdi_decompose () ;
 int nfdi_init () ;
 int nfdi_tree ;
 int nfdicf_decompose () ;
 int nfdicf_init () ;
 int nfdicf_tree ;
 void* norm_name ;
 int normalization_test () ;
 void* optarg ;
 void* prop_name ;
 void* test_name ;
 int tree_walk (int ) ;
 int trees_init () ;
 int trees_populate () ;
 int trees_reduce () ;
 int trees_verify () ;
 TYPE_1__* unicode_data ;
 int usage () ;
 int utf8_init () ;
 void* utf8_name ;
 int verbose ;
 int write_file () ;

int main(int argc, char *argv[])
{
 unsigned int unichar;
 int opt;

 argv0 = argv[0];

 while ((opt = getopt(argc, argv, "a:c:d:f:hn:o:p:t:v")) != -1) {
  switch (opt) {
  case 'a':
   age_name = optarg;
   break;
  case 'c':
   ccc_name = optarg;
   break;
  case 'd':
   data_name = optarg;
   break;
  case 'f':
   fold_name = optarg;
   break;
  case 'n':
   norm_name = optarg;
   break;
  case 'o':
   utf8_name = optarg;
   break;
  case 'p':
   prop_name = optarg;
   break;
  case 't':
   test_name = optarg;
   break;
  case 'v':
   verbose++;
   break;
  case 'h':
   help();
   exit(0);
  default:
   usage();
  }
 }

 if (verbose > 1)
  help();
 for (unichar = 0; unichar != 0x110000; unichar++)
  unicode_data[unichar].code = unichar;
 age_init();
 ccc_init();
 nfdi_init();
 nfdicf_init();
 ignore_init();
 corrections_init();
 hangul_decompose();
 nfdi_decompose();
 nfdicf_decompose();
 utf8_init();
 trees_init();
 trees_populate();
 trees_reduce();
 trees_verify();

 (void)lookup(nfdi_tree, " ");
 if (verbose > 2)
  tree_walk(nfdi_tree);
 if (verbose > 2)
  tree_walk(nfdicf_tree);
 normalization_test();
 write_file();

 return 0;
}
