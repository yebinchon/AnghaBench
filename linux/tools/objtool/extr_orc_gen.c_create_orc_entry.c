
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section {int rela_hash; int rela_list; scalar_t__ sym; TYPE_1__* data; int name; } ;
struct rela {unsigned long addend; unsigned int offset; int hash; int list; int type; scalar_t__ sym; } ;
struct orc_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ d_buf; } ;


 int R_X86_64_PC32 ;
 int WARN (char*,int ) ;
 int hash_add (int ,int *,unsigned int) ;
 int list_add_tail (int *,int *) ;
 struct rela* malloc (int) ;
 int memcpy (struct orc_entry*,struct orc_entry*,int) ;
 int memset (struct rela*,int ,int) ;
 int perror (char*) ;

__attribute__((used)) static int create_orc_entry(struct section *u_sec, struct section *ip_relasec,
    unsigned int idx, struct section *insn_sec,
    unsigned long insn_off, struct orc_entry *o)
{
 struct orc_entry *orc;
 struct rela *rela;

 if (!insn_sec->sym) {
  WARN("missing symbol for section %s", insn_sec->name);
  return -1;
 }


 orc = (struct orc_entry *)u_sec->data->d_buf + idx;
 memcpy(orc, o, sizeof(*orc));


 rela = malloc(sizeof(*rela));
 if (!rela) {
  perror("malloc");
  return -1;
 }
 memset(rela, 0, sizeof(*rela));

 rela->sym = insn_sec->sym;
 rela->addend = insn_off;
 rela->type = R_X86_64_PC32;
 rela->offset = idx * sizeof(int);

 list_add_tail(&rela->list, &ip_relasec->rela_list);
 hash_add(ip_relasec->rela_hash, &rela->hash, rela->offset);

 return 0;
}
