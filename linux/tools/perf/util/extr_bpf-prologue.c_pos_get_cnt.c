
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn_pos {int pos; int begin; } ;



__attribute__((used)) static inline int
pos_get_cnt(struct bpf_insn_pos *pos)
{
 return pos->pos - pos->begin;
}
