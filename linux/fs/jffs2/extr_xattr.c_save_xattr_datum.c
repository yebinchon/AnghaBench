
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kvec {int iov_len; struct jffs2_raw_xattr* iov_base; } ;
struct jffs2_xattr_datum {int flags; int name_len; int value_len; struct jffs2_raw_xattr* xname; int xprefix; int version; int xid; } ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_xattr {int name_len; void* node_crc; void* data_crc; void* value_len; int xprefix; void* version; void* xid; void* hdr_crc; void* totlen; void* nodetype; void* magic; } ;
typedef int rx ;


 int BUG_ON (int) ;
 int EIO ;
 int JFFS2_MAGIC_BITMASK ;
 int JFFS2_NODETYPE_XATTR ;
 int JFFS2_WARNING (char*,int,int,size_t,int) ;
 int JFFS2_XFLAGS_DEAD ;
 int JFFS2_XFLAGS_INVALID ;
 int PAD (int) ;
 int REF_OBSOLETE ;
 int REF_PRISTINE ;
 void* cpu_to_je16 (int) ;
 void* cpu_to_je32 (int ) ;
 int crc32 (int ,struct jffs2_raw_xattr*,int) ;
 int dbg_xattr (char*,int ,int ,int ,struct jffs2_raw_xattr*) ;
 int jffs2_add_physical_node_ref (struct jffs2_sb_info*,int,int ,void*) ;
 int jffs2_flash_writev (struct jffs2_sb_info*,struct kvec*,int,int,size_t*,int ) ;
 int memset (struct jffs2_raw_xattr*,int ,int) ;
 int write_ofs (struct jffs2_sb_info*) ;

__attribute__((used)) static int save_xattr_datum(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd)
{

 struct jffs2_raw_xattr rx;
 struct kvec vecs[2];
 size_t length;
 int rc, totlen;
 uint32_t phys_ofs = write_ofs(c);

 BUG_ON(!xd->xname);
 BUG_ON(xd->flags & (JFFS2_XFLAGS_DEAD|JFFS2_XFLAGS_INVALID));

 vecs[0].iov_base = &rx;
 vecs[0].iov_len = sizeof(rx);
 vecs[1].iov_base = xd->xname;
 vecs[1].iov_len = xd->name_len + 1 + xd->value_len;
 totlen = vecs[0].iov_len + vecs[1].iov_len;


 memset(&rx, 0, sizeof(rx));
 rx.magic = cpu_to_je16(JFFS2_MAGIC_BITMASK);
 rx.nodetype = cpu_to_je16(JFFS2_NODETYPE_XATTR);
 rx.totlen = cpu_to_je32(PAD(totlen));
 rx.hdr_crc = cpu_to_je32(crc32(0, &rx, sizeof(struct jffs2_unknown_node) - 4));

 rx.xid = cpu_to_je32(xd->xid);
 rx.version = cpu_to_je32(++xd->version);
 rx.xprefix = xd->xprefix;
 rx.name_len = xd->name_len;
 rx.value_len = cpu_to_je16(xd->value_len);
 rx.data_crc = cpu_to_je32(crc32(0, vecs[1].iov_base, vecs[1].iov_len));
 rx.node_crc = cpu_to_je32(crc32(0, &rx, sizeof(struct jffs2_raw_xattr) - 4));

 rc = jffs2_flash_writev(c, vecs, 2, phys_ofs, &length, 0);
 if (rc || totlen != length) {
  JFFS2_WARNING("jffs2_flash_writev()=%d, req=%u, wrote=%zu, at %#08x\n",
         rc, totlen, length, phys_ofs);
  rc = rc ? rc : -EIO;
  if (length)
   jffs2_add_physical_node_ref(c, phys_ofs | REF_OBSOLETE, PAD(totlen), ((void*)0));

  return rc;
 }

 jffs2_add_physical_node_ref(c, phys_ofs | REF_PRISTINE, PAD(totlen), (void *)xd);

 dbg_xattr("success on saving xdatum (xid=%u, version=%u, xprefix=%u, xname='%s')\n",
    xd->xid, xd->version, xd->xprefix, xd->xname);

 return 0;
}
