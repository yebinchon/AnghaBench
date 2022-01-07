
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_file_unsafe (char*,int,int *,int *,int *) ;
 int gup_benchmark_fops ;

__attribute__((used)) static int gup_benchmark_init(void)
{
 debugfs_create_file_unsafe("gup_benchmark", 0600, ((void*)0), ((void*)0),
       &gup_benchmark_fops);

 return 0;
}
