
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orangefs_readdir_response_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ trailer_size; scalar_t__ trailer_buf; } ;
struct orangefs_kernel_op_s {TYPE_1__ downcall; } ;
struct orangefs_dir_part {struct orangefs_dir_part* next; scalar_t__ len; } ;
struct orangefs_dir {size_t end; struct orangefs_dir_part* part; } ;


 size_t PART_SHIFT ;

__attribute__((used)) static int parse_readdir(struct orangefs_dir *od,
    struct orangefs_kernel_op_s *op)
{
 struct orangefs_dir_part *part, *new;
 size_t count;

 count = 1;
 part = od->part;
 while (part) {
  count++;
  if (part->next)
   part = part->next;
  else
   break;
 }

 new = (void *)op->downcall.trailer_buf;
 new->next = ((void*)0);
 new->len = op->downcall.trailer_size -
     sizeof(struct orangefs_readdir_response_s);
 if (!od->part)
  od->part = new;
 else
  part->next = new;
 count++;
 od->end = count << PART_SHIFT;

 return 0;
}
