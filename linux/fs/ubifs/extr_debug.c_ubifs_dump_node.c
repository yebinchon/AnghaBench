
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_trun_node {int new_size; int old_size; int inum; } ;
struct ubifs_sb_node {int uuid; int time_gran; int fmt_version; int rp_gid; int rp_uid; int rp_size; int default_compr; int lsave_cnt; int fanout; int jhead_cnt; int orph_lebs; int lpt_lebs; int log_lebs; int max_bud_bytes; int max_leb_cnt; int leb_cnt; int leb_size; int min_io_size; scalar_t__ key_fmt; scalar_t__ key_hash; int flags; } ;
struct ubifs_ref_node {int jhead; int offs; int lnum; } ;
struct ubifs_pad_node {int pad_len; } ;
struct ubifs_orph_node {int * inos; int cmt_no; } ;
struct ubifs_mst_node {int total_dark; int total_dead; int total_used; int total_dirty; int total_free; int idx_lebs; int empty_lebs; int leb_cnt; int lscan_lnum; int lsave_offs; int lsave_lnum; int ltab_offs; int ltab_lnum; int nhead_offs; int nhead_lnum; int lpt_offs; int lpt_lnum; int index_size; int ihead_offs; int ihead_lnum; int gc_lnum; int root_len; int root_offs; int root_lnum; int log_lnum; int flags; int cmt_no; int highest_inum; } ;
struct ubifs_ino_node {int data_len; int compr_type; int xattr_names; int xattr_size; int xattr_cnt; int flags; int mode; int gid; int uid; int ctime_nsec; int ctime_sec; int mtime_nsec; int mtime_sec; int atime_nsec; int atime_sec; int nlink; int size; int creat_sqnum; int key; } ;
struct ubifs_info {int fanout; } ;
struct ubifs_idx_node {int level; int child_cnt; } ;
struct ubifs_dent_node {char* name; scalar_t__ type; int inum; int key; int nlen; } ;
struct ubifs_data_node {int data; int compr_type; int size; int key; } ;
struct ubifs_ch {int node_type; int len; int magic; } ;
struct ubifs_branch {int len; int offs; int lnum; int key; } ;


 int DBG_KEY_BUF_LEN ;
 int DUMP_PREFIX_OFFSET ;
 int KERN_ERR ;
 unsigned long long LLONG_MAX ;

 int UBIFS_CH_SZ ;


 int UBIFS_DATA_NODE_SZ ;

 unsigned int UBIFS_FLG_BIGLPT ;
 unsigned int UBIFS_FLG_SPACE_FIXUP ;


 int UBIFS_MAX_NLEN ;

 scalar_t__ UBIFS_NODE_MAGIC ;

 int UBIFS_ORPH_NODE_SZ ;





 int dbg_lock ;
 int dbg_snprintf_key (struct ubifs_info const*,union ubifs_key*,char*,int) ;
 int dump_ch (void const*) ;
 int get_key_fmt (scalar_t__) ;
 int get_key_hash (scalar_t__) ;
 int isprint (char) ;
 int key_read (struct ubifs_info const*,int *,union ubifs_key*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int pr_cont (char*,...) ;
 int pr_err (char*,...) ;
 int print_hex_dump (int ,char*,int ,int,int,void*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ubifs_branch* ubifs_idx_branch (struct ubifs_info const*,struct ubifs_idx_node const*,int) ;

void ubifs_dump_node(const struct ubifs_info *c, const void *node)
{
 int i, n;
 union ubifs_key key;
 const struct ubifs_ch *ch = node;
 char key_buf[DBG_KEY_BUF_LEN];


 if (le32_to_cpu(ch->magic) != UBIFS_NODE_MAGIC) {
  pr_err("Not a node, first %zu bytes:", UBIFS_CH_SZ);
  print_hex_dump(KERN_ERR, "", DUMP_PREFIX_OFFSET, 32, 1,
          (void *)node, UBIFS_CH_SZ, 1);
  return;
 }

 spin_lock(&dbg_lock);
 dump_ch(node);

 switch (ch->node_type) {
 case 132:
 {
  const struct ubifs_pad_node *pad = node;

  pr_err("\tpad_len        %u\n", le32_to_cpu(pad->pad_len));
  break;
 }
 case 130:
 {
  const struct ubifs_sb_node *sup = node;
  unsigned int sup_flags = le32_to_cpu(sup->flags);

  pr_err("\tkey_hash       %d (%s)\n",
         (int)sup->key_hash, get_key_hash(sup->key_hash));
  pr_err("\tkey_fmt        %d (%s)\n",
         (int)sup->key_fmt, get_key_fmt(sup->key_fmt));
  pr_err("\tflags          %#x\n", sup_flags);
  pr_err("\tbig_lpt        %u\n",
         !!(sup_flags & UBIFS_FLG_BIGLPT));
  pr_err("\tspace_fixup    %u\n",
         !!(sup_flags & UBIFS_FLG_SPACE_FIXUP));
  pr_err("\tmin_io_size    %u\n", le32_to_cpu(sup->min_io_size));
  pr_err("\tleb_size       %u\n", le32_to_cpu(sup->leb_size));
  pr_err("\tleb_cnt        %u\n", le32_to_cpu(sup->leb_cnt));
  pr_err("\tmax_leb_cnt    %u\n", le32_to_cpu(sup->max_leb_cnt));
  pr_err("\tmax_bud_bytes  %llu\n",
         (unsigned long long)le64_to_cpu(sup->max_bud_bytes));
  pr_err("\tlog_lebs       %u\n", le32_to_cpu(sup->log_lebs));
  pr_err("\tlpt_lebs       %u\n", le32_to_cpu(sup->lpt_lebs));
  pr_err("\torph_lebs      %u\n", le32_to_cpu(sup->orph_lebs));
  pr_err("\tjhead_cnt      %u\n", le32_to_cpu(sup->jhead_cnt));
  pr_err("\tfanout         %u\n", le32_to_cpu(sup->fanout));
  pr_err("\tlsave_cnt      %u\n", le32_to_cpu(sup->lsave_cnt));
  pr_err("\tdefault_compr  %u\n",
         (int)le16_to_cpu(sup->default_compr));
  pr_err("\trp_size        %llu\n",
         (unsigned long long)le64_to_cpu(sup->rp_size));
  pr_err("\trp_uid         %u\n", le32_to_cpu(sup->rp_uid));
  pr_err("\trp_gid         %u\n", le32_to_cpu(sup->rp_gid));
  pr_err("\tfmt_version    %u\n", le32_to_cpu(sup->fmt_version));
  pr_err("\ttime_gran      %u\n", le32_to_cpu(sup->time_gran));
  pr_err("\tUUID           %pUB\n", sup->uuid);
  break;
 }
 case 134:
 {
  const struct ubifs_mst_node *mst = node;

  pr_err("\thighest_inum   %llu\n",
         (unsigned long long)le64_to_cpu(mst->highest_inum));
  pr_err("\tcommit number  %llu\n",
         (unsigned long long)le64_to_cpu(mst->cmt_no));
  pr_err("\tflags          %#x\n", le32_to_cpu(mst->flags));
  pr_err("\tlog_lnum       %u\n", le32_to_cpu(mst->log_lnum));
  pr_err("\troot_lnum      %u\n", le32_to_cpu(mst->root_lnum));
  pr_err("\troot_offs      %u\n", le32_to_cpu(mst->root_offs));
  pr_err("\troot_len       %u\n", le32_to_cpu(mst->root_len));
  pr_err("\tgc_lnum        %u\n", le32_to_cpu(mst->gc_lnum));
  pr_err("\tihead_lnum     %u\n", le32_to_cpu(mst->ihead_lnum));
  pr_err("\tihead_offs     %u\n", le32_to_cpu(mst->ihead_offs));
  pr_err("\tindex_size     %llu\n",
         (unsigned long long)le64_to_cpu(mst->index_size));
  pr_err("\tlpt_lnum       %u\n", le32_to_cpu(mst->lpt_lnum));
  pr_err("\tlpt_offs       %u\n", le32_to_cpu(mst->lpt_offs));
  pr_err("\tnhead_lnum     %u\n", le32_to_cpu(mst->nhead_lnum));
  pr_err("\tnhead_offs     %u\n", le32_to_cpu(mst->nhead_offs));
  pr_err("\tltab_lnum      %u\n", le32_to_cpu(mst->ltab_lnum));
  pr_err("\tltab_offs      %u\n", le32_to_cpu(mst->ltab_offs));
  pr_err("\tlsave_lnum     %u\n", le32_to_cpu(mst->lsave_lnum));
  pr_err("\tlsave_offs     %u\n", le32_to_cpu(mst->lsave_offs));
  pr_err("\tlscan_lnum     %u\n", le32_to_cpu(mst->lscan_lnum));
  pr_err("\tleb_cnt        %u\n", le32_to_cpu(mst->leb_cnt));
  pr_err("\tempty_lebs     %u\n", le32_to_cpu(mst->empty_lebs));
  pr_err("\tidx_lebs       %u\n", le32_to_cpu(mst->idx_lebs));
  pr_err("\ttotal_free     %llu\n",
         (unsigned long long)le64_to_cpu(mst->total_free));
  pr_err("\ttotal_dirty    %llu\n",
         (unsigned long long)le64_to_cpu(mst->total_dirty));
  pr_err("\ttotal_used     %llu\n",
         (unsigned long long)le64_to_cpu(mst->total_used));
  pr_err("\ttotal_dead     %llu\n",
         (unsigned long long)le64_to_cpu(mst->total_dead));
  pr_err("\ttotal_dark     %llu\n",
         (unsigned long long)le64_to_cpu(mst->total_dark));
  break;
 }
 case 131:
 {
  const struct ubifs_ref_node *ref = node;

  pr_err("\tlnum           %u\n", le32_to_cpu(ref->lnum));
  pr_err("\toffs           %u\n", le32_to_cpu(ref->offs));
  pr_err("\tjhead          %u\n", le32_to_cpu(ref->jhead));
  break;
 }
 case 135:
 {
  const struct ubifs_ino_node *ino = node;

  key_read(c, &ino->key, &key);
  pr_err("\tkey            %s\n",
         dbg_snprintf_key(c, &key, key_buf, DBG_KEY_BUF_LEN));
  pr_err("\tcreat_sqnum    %llu\n",
         (unsigned long long)le64_to_cpu(ino->creat_sqnum));
  pr_err("\tsize           %llu\n",
         (unsigned long long)le64_to_cpu(ino->size));
  pr_err("\tnlink          %u\n", le32_to_cpu(ino->nlink));
  pr_err("\tatime          %lld.%u\n",
         (long long)le64_to_cpu(ino->atime_sec),
         le32_to_cpu(ino->atime_nsec));
  pr_err("\tmtime          %lld.%u\n",
         (long long)le64_to_cpu(ino->mtime_sec),
         le32_to_cpu(ino->mtime_nsec));
  pr_err("\tctime          %lld.%u\n",
         (long long)le64_to_cpu(ino->ctime_sec),
         le32_to_cpu(ino->ctime_nsec));
  pr_err("\tuid            %u\n", le32_to_cpu(ino->uid));
  pr_err("\tgid            %u\n", le32_to_cpu(ino->gid));
  pr_err("\tmode           %u\n", le32_to_cpu(ino->mode));
  pr_err("\tflags          %#x\n", le32_to_cpu(ino->flags));
  pr_err("\txattr_cnt      %u\n", le32_to_cpu(ino->xattr_cnt));
  pr_err("\txattr_size     %u\n", le32_to_cpu(ino->xattr_size));
  pr_err("\txattr_names    %u\n", le32_to_cpu(ino->xattr_names));
  pr_err("\tcompr_type     %#x\n",
         (int)le16_to_cpu(ino->compr_type));
  pr_err("\tdata len       %u\n", le32_to_cpu(ino->data_len));
  break;
 }
 case 137:
 case 128:
 {
  const struct ubifs_dent_node *dent = node;
  int nlen = le16_to_cpu(dent->nlen);

  key_read(c, &dent->key, &key);
  pr_err("\tkey            %s\n",
         dbg_snprintf_key(c, &key, key_buf, DBG_KEY_BUF_LEN));
  pr_err("\tinum           %llu\n",
         (unsigned long long)le64_to_cpu(dent->inum));
  pr_err("\ttype           %d\n", (int)dent->type);
  pr_err("\tnlen           %d\n", nlen);
  pr_err("\tname           ");

  if (nlen > UBIFS_MAX_NLEN)
   pr_err("(bad name length, not printing, bad or corrupted node)");
  else {
   for (i = 0; i < nlen && dent->name[i]; i++)
    pr_cont("%c", isprint(dent->name[i]) ?
     dent->name[i] : '?');
  }
  pr_cont("\n");

  break;
 }
 case 138:
 {
  const struct ubifs_data_node *dn = node;
  int dlen = le32_to_cpu(ch->len) - UBIFS_DATA_NODE_SZ;

  key_read(c, &dn->key, &key);
  pr_err("\tkey            %s\n",
         dbg_snprintf_key(c, &key, key_buf, DBG_KEY_BUF_LEN));
  pr_err("\tsize           %u\n", le32_to_cpu(dn->size));
  pr_err("\tcompr_typ      %d\n",
         (int)le16_to_cpu(dn->compr_type));
  pr_err("\tdata size      %d\n", dlen);
  pr_err("\tdata:\n");
  print_hex_dump(KERN_ERR, "\t", DUMP_PREFIX_OFFSET, 32, 1,
          (void *)&dn->data, dlen, 0);
  break;
 }
 case 129:
 {
  const struct ubifs_trun_node *trun = node;

  pr_err("\tinum           %u\n", le32_to_cpu(trun->inum));
  pr_err("\told_size       %llu\n",
         (unsigned long long)le64_to_cpu(trun->old_size));
  pr_err("\tnew_size       %llu\n",
         (unsigned long long)le64_to_cpu(trun->new_size));
  break;
 }
 case 136:
 {
  const struct ubifs_idx_node *idx = node;

  n = le16_to_cpu(idx->child_cnt);
  pr_err("\tchild_cnt      %d\n", n);
  pr_err("\tlevel          %d\n", (int)le16_to_cpu(idx->level));
  pr_err("\tBranches:\n");

  for (i = 0; i < n && i < c->fanout - 1; i++) {
   const struct ubifs_branch *br;

   br = ubifs_idx_branch(c, idx, i);
   key_read(c, &br->key, &key);
   pr_err("\t%d: LEB %d:%d len %d key %s\n",
          i, le32_to_cpu(br->lnum), le32_to_cpu(br->offs),
          le32_to_cpu(br->len),
          dbg_snprintf_key(c, &key, key_buf,
      DBG_KEY_BUF_LEN));
  }
  break;
 }
 case 139:
  break;
 case 133:
 {
  const struct ubifs_orph_node *orph = node;

  pr_err("\tcommit number  %llu\n",
         (unsigned long long)
    le64_to_cpu(orph->cmt_no) & LLONG_MAX);
  pr_err("\tlast node flag %llu\n",
         (unsigned long long)(le64_to_cpu(orph->cmt_no)) >> 63);
  n = (le32_to_cpu(ch->len) - UBIFS_ORPH_NODE_SZ) >> 3;
  pr_err("\t%d orphan inode numbers:\n", n);
  for (i = 0; i < n; i++)
   pr_err("\t  ino %llu\n",
          (unsigned long long)le64_to_cpu(orph->inos[i]));
  break;
 }
 case 140:
 {
  break;
 }
 default:
  pr_err("node type %d was not recognized\n",
         (int)ch->node_type);
 }
 spin_unlock(&dbg_lock);
}
