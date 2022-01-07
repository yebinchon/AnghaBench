
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct file* file; } ;
struct splice_desc {int flags; int total_len; int opos; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct file {int dummy; } ;


 int do_splice_from (struct pipe_inode_info*,struct file*,int ,int ,int ) ;

__attribute__((used)) static int direct_splice_actor(struct pipe_inode_info *pipe,
          struct splice_desc *sd)
{
 struct file *file = sd->u.file;

 return do_splice_from(pipe, file, sd->opos, sd->total_len,
         sd->flags);
}
