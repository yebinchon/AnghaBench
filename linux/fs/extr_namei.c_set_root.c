
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dentry; } ;
struct nameidata {int flags; TYPE_2__ root; int root_seq; } ;
struct fs_struct {TYPE_2__ root; int seq; } ;
struct TYPE_6__ {struct fs_struct* fs; } ;
struct TYPE_4__ {int d_seq; } ;


 int LOOKUP_RCU ;
 int LOOKUP_ROOT_GRABBED ;
 int __read_seqcount_begin (int *) ;
 TYPE_3__* current ;
 int get_fs_root (struct fs_struct*,TYPE_2__*) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;

__attribute__((used)) static void set_root(struct nameidata *nd)
{
 struct fs_struct *fs = current->fs;

 if (nd->flags & LOOKUP_RCU) {
  unsigned seq;

  do {
   seq = read_seqcount_begin(&fs->seq);
   nd->root = fs->root;
   nd->root_seq = __read_seqcount_begin(&nd->root.dentry->d_seq);
  } while (read_seqcount_retry(&fs->seq, seq));
 } else {
  get_fs_root(fs, &nd->root);
  nd->flags |= LOOKUP_ROOT_GRABBED;
 }
}
