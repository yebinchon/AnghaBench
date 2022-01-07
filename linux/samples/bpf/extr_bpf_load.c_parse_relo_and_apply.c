
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bpf_map_data {scalar_t__ elf_offset; int fd; } ;
struct bpf_insn {int code; int imm; int src_reg; } ;
struct TYPE_9__ {int r_offset; int r_info; } ;
struct TYPE_8__ {int sh_size; int sh_entsize; } ;
struct TYPE_7__ {scalar_t__ st_value; } ;
typedef TYPE_1__ GElf_Sym ;
typedef TYPE_2__ GElf_Shdr ;
typedef TYPE_3__ GElf_Rel ;
typedef int Elf_Data ;


 int BPF_DW ;
 int BPF_IMM ;
 int BPF_LD ;
 int BPF_PSEUDO_MAP_FD ;
 int GELF_R_SYM (int ) ;
 int gelf_getrel (int *,int,TYPE_3__*) ;
 int gelf_getsym (int *,int ,TYPE_1__*) ;
 int printf (char*,unsigned int,...) ;

__attribute__((used)) static int parse_relo_and_apply(Elf_Data *data, Elf_Data *symbols,
    GElf_Shdr *shdr, struct bpf_insn *insn,
    struct bpf_map_data *maps, int nr_maps)
{
 int i, nrels;

 nrels = shdr->sh_size / shdr->sh_entsize;

 for (i = 0; i < nrels; i++) {
  GElf_Sym sym;
  GElf_Rel rel;
  unsigned int insn_idx;
  bool match = 0;
  int j, map_idx;

  gelf_getrel(data, i, &rel);

  insn_idx = rel.r_offset / sizeof(struct bpf_insn);

  gelf_getsym(symbols, GELF_R_SYM(rel.r_info), &sym);

  if (insn[insn_idx].code != (BPF_LD | BPF_IMM | BPF_DW)) {
   printf("invalid relo for insn[%d].code 0x%x\n",
          insn_idx, insn[insn_idx].code);
   return 1;
  }
  insn[insn_idx].src_reg = BPF_PSEUDO_MAP_FD;


  for (map_idx = 0; map_idx < nr_maps; map_idx++) {
   if (maps[map_idx].elf_offset == sym.st_value) {
    match = 1;
    break;
   }
  }
  if (match) {
   insn[insn_idx].imm = maps[map_idx].fd;
  } else {
   printf("invalid relo for insn[%d] no map_data match\n",
          insn_idx);
   return 1;
  }
 }

 return 0;
}
