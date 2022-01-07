
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* file; } ;
typedef TYPE_1__ expanded_location ;


 char* DECL_NAME_POINTER (int ) ;
 int DECL_SOURCE_LOCATION (int ) ;
 int cfun ;
 int current_function_decl ;
 TYPE_1__ expand_location (int ) ;
 int fprintf (int ,char*,int,char*,char*) ;
 int n_basic_blocks_for_fn (int ) ;
 int n_edges_for_fn (int ) ;
 int stderr ;

__attribute__((used)) static unsigned int cyc_complexity_execute(void)
{
 int complexity;
 expanded_location xloc;


 complexity = n_edges_for_fn(cfun) - n_basic_blocks_for_fn(cfun) + 2;

 xloc = expand_location(DECL_SOURCE_LOCATION(current_function_decl));
 fprintf(stderr, "Cyclomatic Complexity %d %s:%s\n", complexity,
  xloc.file, DECL_NAME_POINTER(current_function_decl));

 return 0;
}
