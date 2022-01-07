
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {scalar_t__ unfolded; scalar_t__ leaf; } ;
typedef enum hierarchy_move_dir { ____Placeholder_hierarchy_move_dir } hierarchy_move_dir ;


 int HMD_FORCE_CHILD ;
 int HMD_FORCE_SIBLING ;

__attribute__((used)) static bool can_goto_child(struct hist_entry *he, enum hierarchy_move_dir hmd)
{
 if (he->leaf || hmd == HMD_FORCE_SIBLING)
  return 0;

 if (he->unfolded || hmd == HMD_FORCE_CHILD)
  return 1;

 return 0;
}
