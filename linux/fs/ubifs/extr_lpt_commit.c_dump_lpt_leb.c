
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_nnode {TYPE_1__* nbranch; } ;
struct ubifs_info {int leb_size; int pnode_sz; int nnode_sz; int ltab_sz; int lsave_sz; int big_lpt; } ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int offs; int lnum; } ;


 int GFP_NOFS ;
 int PAGE_KERNEL ;
 int UBIFS_LPT_FANOUT ;




 void* __vmalloc (int,int ,int ) ;
 TYPE_2__* current ;
 int get_lpt_node_type (struct ubifs_info const*,void*,int*) ;
 int get_pad_len (struct ubifs_info const*,void*,int) ;
 int is_a_node (struct ubifs_info const*,void*,int) ;
 int pr_cont (char*,...) ;
 int pr_err (char*,int,...) ;
 int ubifs_err (struct ubifs_info const*,char*,...) ;
 int ubifs_leb_read (struct ubifs_info const*,int,void*,int ,int,int) ;
 int ubifs_unpack_nnode (struct ubifs_info const*,void*,struct ubifs_nnode*) ;
 int vfree (void*) ;

__attribute__((used)) static void dump_lpt_leb(const struct ubifs_info *c, int lnum)
{
 int err, len = c->leb_size, node_type, node_num, node_len, offs;
 void *buf, *p;

 pr_err("(pid %d) start dumping LEB %d\n", current->pid, lnum);
 buf = p = __vmalloc(c->leb_size, GFP_NOFS, PAGE_KERNEL);
 if (!buf) {
  ubifs_err(c, "cannot allocate memory to dump LPT");
  return;
 }

 err = ubifs_leb_read(c, lnum, buf, 0, c->leb_size, 1);
 if (err)
  goto out;

 while (1) {
  offs = c->leb_size - len;
  if (!is_a_node(c, p, len)) {
   int pad_len;

   pad_len = get_pad_len(c, p, len);
   if (pad_len) {
    pr_err("LEB %d:%d, pad %d bytes\n",
           lnum, offs, pad_len);
    p += pad_len;
    len -= pad_len;
    continue;
   }
   if (len)
    pr_err("LEB %d:%d, free %d bytes\n",
           lnum, offs, len);
   break;
  }

  node_type = get_lpt_node_type(c, p, &node_num);
  switch (node_type) {
  case 128:
  {
   node_len = c->pnode_sz;
   if (c->big_lpt)
    pr_err("LEB %d:%d, pnode num %d\n",
           lnum, offs, node_num);
   else
    pr_err("LEB %d:%d, pnode\n", lnum, offs);
   break;
  }
  case 129:
  {
   int i;
   struct ubifs_nnode nnode;

   node_len = c->nnode_sz;
   if (c->big_lpt)
    pr_err("LEB %d:%d, nnode num %d, ",
           lnum, offs, node_num);
   else
    pr_err("LEB %d:%d, nnode, ",
           lnum, offs);
   err = ubifs_unpack_nnode(c, p, &nnode);
   if (err) {
    pr_err("failed to unpack_node, error %d\n",
           err);
    break;
   }
   for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
    pr_cont("%d:%d", nnode.nbranch[i].lnum,
           nnode.nbranch[i].offs);
    if (i != UBIFS_LPT_FANOUT - 1)
     pr_cont(", ");
   }
   pr_cont("\n");
   break;
  }
  case 130:
   node_len = c->ltab_sz;
   pr_err("LEB %d:%d, ltab\n", lnum, offs);
   break;
  case 131:
   node_len = c->lsave_sz;
   pr_err("LEB %d:%d, lsave len\n", lnum, offs);
   break;
  default:
   ubifs_err(c, "LPT node type %d not recognized", node_type);
   goto out;
  }

  p += node_len;
  len -= node_len;
 }

 pr_err("(pid %d) finish dumping LEB %d\n", current->pid, lnum);
out:
 vfree(buf);
 return;
}
