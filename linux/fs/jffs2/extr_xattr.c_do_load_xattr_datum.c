
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct jffs2_xattr_datum {int name_len; int value_len; size_t data_crc; char* xname; char* xvalue; int hashkey; int xprefix; int xid; int xindex; int flags; int node; } ;
struct jffs2_sb_info {size_t xdatum_mem_usage; int * xattrindex; } ;
struct jffs2_raw_xattr {int dummy; } ;


 int BUG_ON (int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int JFFS2_WARNING (char*,int,size_t,size_t,...) ;
 int JFFS2_XATTR_IS_CORRUPTED ;
 int JFFS2_XFLAGS_HOT ;
 int JFFS2_XFLAGS_INVALID ;
 scalar_t__ REF_PRISTINE ;
 int XATTRINDEX_HASHSIZE ;
 size_t crc32 (int ,char*,size_t) ;
 int dbg_xattr (char*,int ,int ,char*) ;
 int jffs2_flash_read (struct jffs2_sb_info*,int,size_t,size_t*,char*) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int reclaim_xattr_datum (struct jffs2_sb_info*) ;
 scalar_t__ ref_flags (int ) ;
 int ref_offset (int ) ;
 int xattr_datum_hashkey (int ,char*,char*,int) ;

__attribute__((used)) static int do_load_xattr_datum(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd)
{

 char *data;
 size_t readlen;
 uint32_t crc, length;
 int i, ret, retry = 0;

 BUG_ON(ref_flags(xd->node) != REF_PRISTINE);
 BUG_ON(!list_empty(&xd->xindex));
 retry:
 length = xd->name_len + 1 + xd->value_len;
 data = kmalloc(length, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ret = jffs2_flash_read(c, ref_offset(xd->node)+sizeof(struct jffs2_raw_xattr),
          length, &readlen, data);

 if (ret || length!=readlen) {
  JFFS2_WARNING("jffs2_flash_read() returned %d, request=%d, readlen=%zu, at %#08x\n",
         ret, length, readlen, ref_offset(xd->node));
  kfree(data);
  return ret ? ret : -EIO;
 }

 data[xd->name_len] = '\0';
 crc = crc32(0, data, length);
 if (crc != xd->data_crc) {
  JFFS2_WARNING("node CRC failed (JFFS2_NODETYPE_XATTR)"
         " at %#08x, read: 0x%08x calculated: 0x%08x\n",
         ref_offset(xd->node), xd->data_crc, crc);
  kfree(data);
  xd->flags |= JFFS2_XFLAGS_INVALID;
  return JFFS2_XATTR_IS_CORRUPTED;
 }

 xd->flags |= JFFS2_XFLAGS_HOT;
 xd->xname = data;
 xd->xvalue = data + xd->name_len+1;

 c->xdatum_mem_usage += length;

 xd->hashkey = xattr_datum_hashkey(xd->xprefix, xd->xname, xd->xvalue, xd->value_len);
 i = xd->hashkey % XATTRINDEX_HASHSIZE;
 list_add(&xd->xindex, &c->xattrindex[i]);
 if (!retry) {
  retry = 1;
  reclaim_xattr_datum(c);
  if (!xd->xname)
   goto retry;
 }

 dbg_xattr("success on loading xdatum (xid=%u, xprefix=%u, xname='%s')\n",
    xd->xid, xd->xprefix, xd->xname);

 return 0;
}
