
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_readinode_info {scalar_t__ latest_ref; scalar_t__ mctime_ver; scalar_t__ latest_mctime; int fds; TYPE_2__* mdata_tn; int tn_root; } ;
struct jffs2_raw_inode {int mode; void* csize; void* dsize; void* isize; void* mtime; void* ctime; void* version; void* node_crc; void* uid; void* gid; void* atime; } ;
struct jffs2_inode_info {char* target; TYPE_1__* inocache; int fragtree; TYPE_5__* metadata; int dents; } ;
typedef int rii ;
struct TYPE_11__ {scalar_t__ raw; } ;
struct TYPE_10__ {TYPE_5__* node; } ;
struct TYPE_9__ {TYPE_5__* fn; } ;
struct TYPE_8__ {int ino; scalar_t__ state; int pino_nlink; } ;


 int EIO ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INO_STATE_CHECKEDABSENT ;
 scalar_t__ INO_STATE_CHECKING ;
 int INO_STATE_PRESENT ;
 scalar_t__ INO_STATE_READING ;
 int JFFS2_ERROR (char*,int,...) ;
 scalar_t__ JFFS2_MAX_NAME_LEN ;
 int JFFS2_NOTICE (char*) ;
 int JFFS2_WARNING (char*,int,...) ;
 int RB_ROOT ;




 int S_IFMT ;

 int S_IRUGO ;
 int S_IWUSR ;
 int S_IXUGO ;
 void* cpu_to_je16 (int ) ;
 void* cpu_to_je32 (scalar_t__) ;
 int cpu_to_jemode (int) ;
 scalar_t__ crc32 (int ,struct jffs2_raw_inode*,int) ;
 int dbg_readinode (char*,...) ;
 TYPE_4__* frag_first (int *) ;
 int frag_next (TYPE_4__*) ;
 scalar_t__ je32_to_cpu (void*) ;
 int jemode_to_cpu (int ) ;
 int jffs2_build_inode_fragtree (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_readinode_info*) ;
 int jffs2_dbg_fragtree_paranoia_check_nolock (struct jffs2_inode_info*) ;
 int jffs2_flash_read (struct jffs2_sb_info*,int,scalar_t__,size_t*,char*) ;
 int jffs2_free_full_dnode (TYPE_5__*) ;
 int jffs2_free_node_frag (TYPE_4__*) ;
 int jffs2_free_tmp_dnode_info (TYPE_2__*) ;
 int jffs2_free_tmp_dnode_info_list (int *) ;
 int jffs2_get_inode_nodes (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_readinode_info*) ;
 int jffs2_kill_tn (struct jffs2_sb_info*,TYPE_2__*) ;
 int jffs2_set_inocache_state (struct jffs2_sb_info*,TYPE_1__*,int ) ;
 scalar_t__ jffs2_truncate_fragtree (struct jffs2_sb_info*,int *,scalar_t__) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int memset (struct jffs2_readinode_info*,int ,int) ;
 int ref_offset (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int jffs2_do_read_inode_internal(struct jffs2_sb_info *c,
     struct jffs2_inode_info *f,
     struct jffs2_raw_inode *latest_node)
{
 struct jffs2_readinode_info rii;
 uint32_t crc, new_size;
 size_t retlen;
 int ret;

 dbg_readinode("ino #%u pino/nlink is %d\n", f->inocache->ino,
        f->inocache->pino_nlink);

 memset(&rii, 0, sizeof(rii));


 ret = jffs2_get_inode_nodes(c, f, &rii);

 if (ret) {
  JFFS2_ERROR("cannot read nodes for ino %u, returned error is %d\n", f->inocache->ino, ret);
  if (f->inocache->state == INO_STATE_READING)
   jffs2_set_inocache_state(c, f->inocache, INO_STATE_CHECKEDABSENT);
  return ret;
 }

 ret = jffs2_build_inode_fragtree(c, f, &rii);
 if (ret) {
  JFFS2_ERROR("Failed to build final fragtree for inode #%u: error %d\n",
       f->inocache->ino, ret);
  if (f->inocache->state == INO_STATE_READING)
   jffs2_set_inocache_state(c, f->inocache, INO_STATE_CHECKEDABSENT);
  jffs2_free_tmp_dnode_info_list(&rii.tn_root);

  if (rii.mdata_tn) {
   jffs2_free_full_dnode(rii.mdata_tn->fn);
   jffs2_free_tmp_dnode_info(rii.mdata_tn);
   rii.mdata_tn = ((void*)0);
  }
  return ret;
 }

 if (rii.mdata_tn) {
  if (rii.mdata_tn->fn->raw == rii.latest_ref) {
   f->metadata = rii.mdata_tn->fn;
   jffs2_free_tmp_dnode_info(rii.mdata_tn);
  } else {
   jffs2_kill_tn(c, rii.mdata_tn);
  }
  rii.mdata_tn = ((void*)0);
 }

 f->dents = rii.fds;

 jffs2_dbg_fragtree_paranoia_check_nolock(f);

 if (unlikely(!rii.latest_ref)) {

  if (f->inocache->ino != 1) {
   JFFS2_WARNING("no data nodes found for ino #%u\n", f->inocache->ino);
   if (!rii.fds) {
    if (f->inocache->state == INO_STATE_READING)
     jffs2_set_inocache_state(c, f->inocache, INO_STATE_CHECKEDABSENT);
    return -EIO;
   }
   JFFS2_NOTICE("but it has children so we fake some modes for it\n");
  }
  latest_node->mode = cpu_to_jemode(130|S_IRUGO|S_IWUSR|S_IXUGO);
  latest_node->version = cpu_to_je32(0);
  latest_node->atime = latest_node->ctime = latest_node->mtime = cpu_to_je32(0);
  latest_node->isize = cpu_to_je32(0);
  latest_node->gid = cpu_to_je16(0);
  latest_node->uid = cpu_to_je16(0);
  if (f->inocache->state == INO_STATE_READING)
   jffs2_set_inocache_state(c, f->inocache, INO_STATE_PRESENT);
  return 0;
 }

 ret = jffs2_flash_read(c, ref_offset(rii.latest_ref), sizeof(*latest_node), &retlen, (void *)latest_node);
 if (ret || retlen != sizeof(*latest_node)) {
  JFFS2_ERROR("failed to read from flash: error %d, %zd of %zd bytes read\n",
   ret, retlen, sizeof(*latest_node));

  return ret ? ret : -EIO;
 }

 crc = crc32(0, latest_node, sizeof(*latest_node)-8);
 if (crc != je32_to_cpu(latest_node->node_crc)) {
  JFFS2_ERROR("CRC failed for read_inode of inode %u at physical location 0x%x\n",
   f->inocache->ino, ref_offset(rii.latest_ref));
  return -EIO;
 }

 switch(jemode_to_cpu(latest_node->mode) & S_IFMT) {
 case 130:
  if (rii.mctime_ver > je32_to_cpu(latest_node->version)) {


   latest_node->ctime = latest_node->mtime = cpu_to_je32(rii.latest_mctime);
  }
  break;


 case 128:

  new_size = jffs2_truncate_fragtree(c, &f->fragtree, je32_to_cpu(latest_node->isize));
  if (new_size != je32_to_cpu(latest_node->isize)) {
   JFFS2_WARNING("Truncating ino #%u to %d bytes failed because it only had %d bytes to start with!\n",
          f->inocache->ino, je32_to_cpu(latest_node->isize), new_size);
   latest_node->isize = cpu_to_je32(new_size);
  }
  break;

 case 129:




  if (!je32_to_cpu(latest_node->isize))
   latest_node->isize = latest_node->dsize;

  if (f->inocache->state != INO_STATE_CHECKING) {



   uint32_t csize = je32_to_cpu(latest_node->csize);
   if (csize > JFFS2_MAX_NAME_LEN)
    return -ENAMETOOLONG;
   f->target = kmalloc(csize + 1, GFP_KERNEL);
   if (!f->target) {
    JFFS2_ERROR("can't allocate %u bytes of memory for the symlink target path cache\n", csize);
    return -ENOMEM;
   }

   ret = jffs2_flash_read(c, ref_offset(rii.latest_ref) + sizeof(*latest_node),
            csize, &retlen, (char *)f->target);

   if (ret || retlen != csize) {
    if (retlen != csize)
     ret = -EIO;
    kfree(f->target);
    f->target = ((void*)0);
    return ret;
   }

   f->target[csize] = '\0';
   dbg_readinode("symlink's target '%s' cached\n", f->target);
  }



 case 132:
 case 131:


  if (f->metadata) {
   JFFS2_ERROR("Argh. Special inode #%u with mode 0%o had metadata node\n",
          f->inocache->ino, jemode_to_cpu(latest_node->mode));
   return -EIO;
  }
  if (!frag_first(&f->fragtree)) {
   JFFS2_ERROR("Argh. Special inode #%u with mode 0%o has no fragments\n",
          f->inocache->ino, jemode_to_cpu(latest_node->mode));
   return -EIO;
  }

  if (frag_next(frag_first(&f->fragtree))) {
   JFFS2_ERROR("Argh. Special inode #%u with mode 0x%x had more than one node\n",
          f->inocache->ino, jemode_to_cpu(latest_node->mode));

   return -EIO;
  }

  f->metadata = frag_first(&f->fragtree)->node;
  jffs2_free_node_frag(frag_first(&f->fragtree));
  f->fragtree = RB_ROOT;
  break;
 }
 if (f->inocache->state == INO_STATE_READING)
  jffs2_set_inocache_state(c, f->inocache, INO_STATE_PRESENT);

 return 0;
}
