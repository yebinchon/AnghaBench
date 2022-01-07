
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int min_io_size; int leb_size; int sbuf; } ;


 int dbg_mnt (char*,int,...) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_leb_change (struct ubifs_info*,int,int ,int) ;
 int ubifs_leb_read (struct ubifs_info*,int,int ,int ,int,int) ;
 int ubifs_leb_unmap (struct ubifs_info*,int) ;

__attribute__((used)) static int fixup_leb(struct ubifs_info *c, int lnum, int len)
{
 int err;

 ubifs_assert(c, len >= 0);
 ubifs_assert(c, len % c->min_io_size == 0);
 ubifs_assert(c, len < c->leb_size);

 if (len == 0) {
  dbg_mnt("unmap empty LEB %d", lnum);
  return ubifs_leb_unmap(c, lnum);
 }

 dbg_mnt("fixup LEB %d, data len %d", lnum, len);
 err = ubifs_leb_read(c, lnum, c->sbuf, 0, len, 1);
 if (err)
  return err;

 return ubifs_leb_change(c, lnum, c->sbuf, len);
}
