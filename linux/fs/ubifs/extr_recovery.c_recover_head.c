
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int max_write_size; int leb_size; } ;


 int dbg_rcvry (char*,int,int) ;
 int is_empty (void*,int) ;
 int ubifs_leb_change (struct ubifs_info*,int,void*,int) ;
 int ubifs_leb_read (struct ubifs_info*,int,void*,int,int,int) ;
 int ubifs_leb_unmap (struct ubifs_info*,int) ;

__attribute__((used)) static int recover_head(struct ubifs_info *c, int lnum, int offs, void *sbuf)
{
 int len = c->max_write_size, err;

 if (offs + len > c->leb_size)
  len = c->leb_size - offs;

 if (!len)
  return 0;


 err = ubifs_leb_read(c, lnum, sbuf, offs, len, 1);
 if (err || !is_empty(sbuf, len)) {
  dbg_rcvry("cleaning head at %d:%d", lnum, offs);
  if (offs == 0)
   return ubifs_leb_unmap(c, lnum);
  err = ubifs_leb_read(c, lnum, sbuf, 0, offs, 1);
  if (err)
   return err;
  return ubifs_leb_change(c, lnum, sbuf, offs);
 }

 return 0;
}
