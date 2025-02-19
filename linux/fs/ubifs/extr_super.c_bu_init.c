
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bulk_read; } ;
struct TYPE_4__ {scalar_t__ buf; } ;
struct ubifs_info {int bulk_read; scalar_t__ max_bu_buf_len; TYPE_1__ mount_opts; TYPE_2__ bu; } ;


 int GFP_KERNEL ;
 scalar_t__ UBIFS_KMALLOC_OK ;
 int __GFP_NOWARN ;
 scalar_t__ kmalloc (scalar_t__,int) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_warn (struct ubifs_info*,char*,scalar_t__) ;

__attribute__((used)) static void bu_init(struct ubifs_info *c)
{
 ubifs_assert(c, c->bulk_read == 1);

 if (c->bu.buf)
  return;

again:
 c->bu.buf = kmalloc(c->max_bu_buf_len, GFP_KERNEL | __GFP_NOWARN);
 if (!c->bu.buf) {
  if (c->max_bu_buf_len > UBIFS_KMALLOC_OK) {
   c->max_bu_buf_len = UBIFS_KMALLOC_OK;
   goto again;
  }


  ubifs_warn(c, "cannot allocate %d bytes of memory for bulk-read, disabling it",
      c->max_bu_buf_len);
  c->mount_opts.bulk_read = 1;
  c->bulk_read = 0;
  return;
 }
}
