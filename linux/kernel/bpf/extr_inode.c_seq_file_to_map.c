
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int file; } ;
struct bpf_map {int dummy; } ;
struct TYPE_2__ {struct bpf_map* i_private; } ;


 TYPE_1__* file_inode (int ) ;

__attribute__((used)) static struct bpf_map *seq_file_to_map(struct seq_file *m)
{
 return file_inode(m->file)->i_private;
}
