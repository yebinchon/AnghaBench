
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct code_page_directory {TYPE_1__* array; int n_code_pages; int magic; } ;
struct code_page_data {int * offs; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ secno ;
struct TYPE_2__ {int index; int code_page_data; } ;


 scalar_t__ CP_DIR_MAGIC ;
 int GFP_KERNEL ;
 int brelse (struct buffer_head*) ;
 void* hpfs_map_sector (struct super_block*,scalar_t__,struct buffer_head**,int ) ;
 unsigned char* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int pr_err (char*,...) ;

unsigned char *hpfs_load_code_page(struct super_block *s, secno cps)
{
 struct buffer_head *bh;
 secno cpds;
 unsigned cpi;
 unsigned char *ptr;
 unsigned char *cp_table;
 int i;
 struct code_page_data *cpd;
 struct code_page_directory *cp = hpfs_map_sector(s, cps, &bh, 0);
 if (!cp) return ((void*)0);
 if (le32_to_cpu(cp->magic) != CP_DIR_MAGIC) {
  pr_err("Code page directory magic doesn't match (magic = %08x)\n",
   le32_to_cpu(cp->magic));
  brelse(bh);
  return ((void*)0);
 }
 if (!le32_to_cpu(cp->n_code_pages)) {
  pr_err("n_code_pages == 0\n");
  brelse(bh);
  return ((void*)0);
 }
 cpds = le32_to_cpu(cp->array[0].code_page_data);
 cpi = le16_to_cpu(cp->array[0].index);
 brelse(bh);

 if (cpi >= 3) {
  pr_err("Code page index out of array\n");
  return ((void*)0);
 }

 if (!(cpd = hpfs_map_sector(s, cpds, &bh, 0))) return ((void*)0);
 if (le16_to_cpu(cpd->offs[cpi]) > 0x178) {
  pr_err("Code page index out of sector\n");
  brelse(bh);
  return ((void*)0);
 }
 ptr = (unsigned char *)cpd + le16_to_cpu(cpd->offs[cpi]) + 6;
 if (!(cp_table = kmalloc(256, GFP_KERNEL))) {
  pr_err("out of memory for code page table\n");
  brelse(bh);
  return ((void*)0);
 }
 memcpy(cp_table, ptr, 128);
 brelse(bh);



 for (i=128; i<256; i++) cp_table[i]=i;
 for (i=128; i<256; i++) if (cp_table[i-128]!=i && cp_table[i-128]>=128)
  cp_table[cp_table[i-128]] = i;

 return cp_table;
}
