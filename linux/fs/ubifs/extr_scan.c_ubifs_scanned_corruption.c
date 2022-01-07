
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int leb_size; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int print_hex_dump (int ,char*,int ,int,int,void*,int,int) ;
 int ubifs_err (struct ubifs_info const*,char*,int,int,...) ;

void ubifs_scanned_corruption(const struct ubifs_info *c, int lnum, int offs,
         void *buf)
{
 int len;

 ubifs_err(c, "corruption at LEB %d:%d", lnum, offs);
 len = c->leb_size - offs;
 if (len > 8192)
  len = 8192;
 ubifs_err(c, "first %d bytes from LEB %d:%d", len, lnum, offs);
 print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 32, 4, buf, len, 1);
}
