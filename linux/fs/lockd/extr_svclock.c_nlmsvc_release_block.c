
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlm_block {TYPE_1__* b_file; int b_count; } ;
struct TYPE_2__ {int f_mutex; } ;


 int kref_put_mutex (int *,int ,int *) ;
 int nlmsvc_free_block ;

__attribute__((used)) static void nlmsvc_release_block(struct nlm_block *block)
{
 if (block != ((void*)0))
  kref_put_mutex(&block->b_count, nlmsvc_free_block, &block->b_file->f_mutex);
}
