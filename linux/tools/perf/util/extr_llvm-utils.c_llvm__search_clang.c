
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clang_path; } ;


 int PATH_MAX ;
 TYPE_1__ llvm_param ;
 int search_program (int ,char*,char*) ;

int llvm__search_clang(void)
{
 char clang_path[PATH_MAX];

 return search_program(llvm_param.clang_path, "clang", clang_path);
}
