
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtree_mem_dqinfo {int dqi_usable_bs; int dqi_qtree_depth; } ;
typedef unsigned int qid_t ;



__attribute__((used)) static int __get_index(struct qtree_mem_dqinfo *info, qid_t id, int depth)
{
 unsigned int epb = info->dqi_usable_bs >> 2;

 depth = info->dqi_qtree_depth - depth - 1;
 while (depth--)
  id /= epb;
 return id % epb;
}
