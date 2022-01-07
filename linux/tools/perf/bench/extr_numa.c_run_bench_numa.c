
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __bench_numa (char const*) ;
 int bench_numa_usage ;
 int command_size (char const**) ;
 int init_params (int *,char const*,int,char const**) ;
 int options ;
 int p0 ;
 int parse_options (int,char const**,int ,int ,int ) ;

__attribute__((used)) static int run_bench_numa(const char *name, const char **argv)
{
 int argc = command_size(argv);

 init_params(&p0, name, argc, argv);
 argc = parse_options(argc, argv, options, bench_numa_usage, 0);
 if (argc)
  goto err;

 if (__bench_numa(name))
  goto err;

 return 0;

err:
 return -1;
}
