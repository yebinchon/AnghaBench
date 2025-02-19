
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct fs_struct {struct path pwd; struct path root; int seq; } ;


 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;

__attribute__((used)) static void get_fs_root_and_pwd_rcu(struct fs_struct *fs, struct path *root,
        struct path *pwd)
{
 unsigned seq;

 do {
  seq = read_seqcount_begin(&fs->seq);
  *root = fs->root;
  *pwd = fs->pwd;
 } while (read_seqcount_retry(&fs->seq, seq));
}
