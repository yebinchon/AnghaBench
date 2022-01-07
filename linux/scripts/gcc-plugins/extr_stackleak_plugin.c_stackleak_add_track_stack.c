
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gimple_stmt_iterator ;
typedef int gimple ;
typedef int gcall ;
typedef int cgraph_node_ptr ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int count; } ;


 int GSI_CONTINUE_LINKING ;
 int GSI_SAME_STMT ;
 int * as_a_gcall (int ) ;
 int cgraph_create_edge (int ,int ,int *,int ,int) ;
 int cgraph_get_create_node (int ) ;
 int cgraph_get_node (int ) ;
 int compute_call_stmt_bb_frequency (int ,TYPE_1__*) ;
 int current_function_decl ;
 int gcc_assert (int ) ;
 TYPE_1__* gimple_bb (int *) ;
 int gimple_build_call (int ,int ) ;
 int gsi_insert_after (int *,int *,int ) ;
 int gsi_insert_before (int *,int *,int ) ;
 int track_function_decl ;

__attribute__((used)) static void stackleak_add_track_stack(gimple_stmt_iterator *gsi, bool after)
{
 gimple stmt;
 gcall *stackleak_track_stack;
 cgraph_node_ptr node;
 int frequency;
 basic_block bb;


 stmt = gimple_build_call(track_function_decl, 0);
 stackleak_track_stack = as_a_gcall(stmt);
 if (after) {
  gsi_insert_after(gsi, stackleak_track_stack,
      GSI_CONTINUE_LINKING);
 } else {
  gsi_insert_before(gsi, stackleak_track_stack, GSI_SAME_STMT);
 }


 bb = gimple_bb(stackleak_track_stack);
 node = cgraph_get_create_node(track_function_decl);
 gcc_assert(node);
 frequency = compute_call_stmt_bb_frequency(current_function_decl, bb);
 cgraph_create_edge(cgraph_get_node(current_function_decl), node,
   stackleak_track_stack, bb->count, frequency);
}
