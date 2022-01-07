
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ run_all; } ;


 scalar_t__ __bench_numa (int *) ;
 int bench_all () ;
 int bench_numa_usage ;
 int init_params (TYPE_1__*,char*,int,char const**) ;
 int numa_usage ;
 int options ;
 TYPE_1__ p0 ;
 int parse_options (int,char const**,int ,int ,int ) ;
 int usage_with_options (int ,int ) ;

int bench_numa(int argc, const char **argv)
{
 init_params(&p0, "main,", argc, argv);
 argc = parse_options(argc, argv, options, bench_numa_usage, 0);
 if (argc)
  goto err;

 if (p0.run_all)
  return bench_all();

 if (__bench_numa(((void*)0)))
  goto err;

 return 0;

err:
 usage_with_options(numa_usage, options);
 return -1;
}
