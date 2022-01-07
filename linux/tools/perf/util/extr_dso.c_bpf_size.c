
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int file_size; int status; } ;
struct TYPE_5__ {int id; int env; } ;
struct dso {TYPE_2__ data; TYPE_1__ bpf_prog; } ;
struct bpf_prog_info_node {TYPE_3__* info_linear; } ;
struct TYPE_8__ {int jited_prog_len; } ;
struct TYPE_7__ {TYPE_4__ info; } ;


 int DSO_DATA_STATUS_ERROR ;
 struct bpf_prog_info_node* perf_env__find_bpf_prog_info (int ,int ) ;

__attribute__((used)) static int bpf_size(struct dso *dso)
{
 struct bpf_prog_info_node *node;

 node = perf_env__find_bpf_prog_info(dso->bpf_prog.env, dso->bpf_prog.id);
 if (!node || !node->info_linear) {
  dso->data.status = DSO_DATA_STATUS_ERROR;
  return -1;
 }

 dso->data.file_size = node->info_linear->info.jited_prog_len;
 return 0;
}
