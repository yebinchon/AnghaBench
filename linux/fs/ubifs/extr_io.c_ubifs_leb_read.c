
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ubi; } ;


 int EBADMSG ;
 int dump_stack () ;
 int ubi_read (int ,int,void*,int,int) ;
 int ubifs_err (struct ubifs_info const*,char*,int,int,int,int) ;

int ubifs_leb_read(const struct ubifs_info *c, int lnum, void *buf, int offs,
     int len, int even_ebadmsg)
{
 int err;

 err = ubi_read(c->ubi, lnum, buf, offs, len);




 if (err && (err != -EBADMSG || even_ebadmsg)) {
  ubifs_err(c, "reading %d bytes from LEB %d:%d failed, error %d",
     len, lnum, offs, err);
  dump_stack();
 }
 return err;
}
