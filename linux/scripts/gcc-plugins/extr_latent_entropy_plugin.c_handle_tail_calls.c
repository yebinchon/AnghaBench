
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int gimple_stmt_iterator ;
typedef int gimple ;
typedef int gcall ;
typedef int basic_block ;


 int __perturb_latent_entropy (int *,int ) ;
 int * as_a_gcall (int ) ;
 int gimple_call_tail_p (int *) ;
 int gsi_end_p (int ) ;
 int gsi_next (int *) ;
 int gsi_start_bb (int ) ;
 int gsi_stmt (int ) ;
 int is_gimple_call (int ) ;

__attribute__((used)) static bool handle_tail_calls(basic_block bb, tree local_entropy)
{
 gimple_stmt_iterator gsi;

 for (gsi = gsi_start_bb(bb); !gsi_end_p(gsi); gsi_next(&gsi)) {
  gcall *call;
  gimple stmt = gsi_stmt(gsi);

  if (!is_gimple_call(stmt))
   continue;

  call = as_a_gcall(stmt);
  if (!gimple_call_tail_p(call))
   continue;

  __perturb_latent_entropy(&gsi, local_entropy);
  return 1;
 }

 return 0;
}
