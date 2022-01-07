
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_dirent {int nsize; void* name_crc; void* node_crc; int type; void* mctime; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; } ;
struct jffs2_inode_info {scalar_t__ highest_version; int dents; TYPE_1__* inocache; } ;
struct jffs2_full_dirent {scalar_t__ ino; struct jffs2_raw_dirent* name; int type; } ;
struct jffs2_eraseblock {int dummy; } ;
typedef int rd ;
struct TYPE_2__ {scalar_t__ ino; } ;


 int ALLOC_GC ;
 scalar_t__ IS_ERR (struct jffs2_full_dirent*) ;
 scalar_t__ JFFS2_F_I_CTIME (struct jffs2_inode_info*) ;
 scalar_t__ JFFS2_F_I_MTIME (struct jffs2_inode_info*) ;
 int JFFS2_MAGIC_BITMASK ;
 int JFFS2_NODETYPE_DIRENT ;
 int JFFS2_SUMMARY_DIRENT_SIZE (int) ;
 int PTR_ERR (struct jffs2_full_dirent*) ;
 void* cpu_to_je16 (int ) ;
 void* cpu_to_je32 (scalar_t__) ;
 scalar_t__ crc32 (int ,struct jffs2_raw_dirent*,int) ;
 int jffs2_add_fd_to_list (struct jffs2_sb_info*,struct jffs2_full_dirent*,int *) ;
 int jffs2_reserve_space_gc (struct jffs2_sb_info*,int,int *,int ) ;
 struct jffs2_full_dirent* jffs2_write_dirent (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_dirent*,struct jffs2_raw_dirent*,int,int ) ;
 int pr_warn (char*,int,...) ;
 int strlen (struct jffs2_raw_dirent*) ;

__attribute__((used)) static int jffs2_garbage_collect_dirent(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb,
     struct jffs2_inode_info *f, struct jffs2_full_dirent *fd)
{
 struct jffs2_full_dirent *new_fd;
 struct jffs2_raw_dirent rd;
 uint32_t alloclen;
 int ret;

 rd.magic = cpu_to_je16(JFFS2_MAGIC_BITMASK);
 rd.nodetype = cpu_to_je16(JFFS2_NODETYPE_DIRENT);
 rd.nsize = strlen(fd->name);
 rd.totlen = cpu_to_je32(sizeof(rd) + rd.nsize);
 rd.hdr_crc = cpu_to_je32(crc32(0, &rd, sizeof(struct jffs2_unknown_node)-4));

 rd.pino = cpu_to_je32(f->inocache->ino);
 rd.version = cpu_to_je32(++f->highest_version);
 rd.ino = cpu_to_je32(fd->ino);


 if (JFFS2_F_I_MTIME(f) == JFFS2_F_I_CTIME(f))
  rd.mctime = cpu_to_je32(JFFS2_F_I_MTIME(f));
 else
  rd.mctime = cpu_to_je32(0);
 rd.type = fd->type;
 rd.node_crc = cpu_to_je32(crc32(0, &rd, sizeof(rd)-8));
 rd.name_crc = cpu_to_je32(crc32(0, fd->name, rd.nsize));

 ret = jffs2_reserve_space_gc(c, sizeof(rd)+rd.nsize, &alloclen,
    JFFS2_SUMMARY_DIRENT_SIZE(rd.nsize));
 if (ret) {
  pr_warn("jffs2_reserve_space_gc of %zd bytes for garbage_collect_dirent failed: %d\n",
   sizeof(rd)+rd.nsize, ret);
  return ret;
 }
 new_fd = jffs2_write_dirent(c, f, &rd, fd->name, rd.nsize, ALLOC_GC);

 if (IS_ERR(new_fd)) {
  pr_warn("jffs2_write_dirent in garbage_collect_dirent failed: %ld\n",
   PTR_ERR(new_fd));
  return PTR_ERR(new_fd);
 }
 jffs2_add_fd_to_list(c, new_fd, &f->dents);
 return 0;
}
