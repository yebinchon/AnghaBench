
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dedup_test; scalar_t__ info_raw_test; scalar_t__ pprint_test; scalar_t__ file_test; scalar_t__ get_info_test; scalar_t__ raw_test; scalar_t__ always_log; } ;


 int __base_pr ;
 TYPE_1__ args ;
 int libbpf_set_print (int ) ;
 int parse_args (int,char**) ;
 int print_summary () ;
 int test_dedup () ;
 int test_file () ;
 int test_get_info () ;
 int test_info_raw () ;
 int test_pprint () ;
 int test_raw () ;

int main(int argc, char **argv)
{
 int err = 0;

 err = parse_args(argc, argv);
 if (err)
  return err;

 if (args.always_log)
  libbpf_set_print(__base_pr);

 if (args.raw_test)
  err |= test_raw();

 if (args.get_info_test)
  err |= test_get_info();

 if (args.file_test)
  err |= test_file();

 if (args.pprint_test)
  err |= test_pprint();

 if (args.info_raw_test)
  err |= test_info_raw();

 if (args.dedup_test)
  err |= test_dedup();

 if (args.raw_test || args.get_info_test || args.file_test ||
     args.pprint_test || args.info_raw_test || args.dedup_test)
  goto done;

 err |= test_raw();
 err |= test_get_info();
 err |= test_file();
 err |= test_info_raw();
 err |= test_dedup();

done:
 print_summary();
 return err;
}
