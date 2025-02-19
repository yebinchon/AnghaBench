
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_jhead {int dummy; } ;
struct ubifs_info {int jhead_cnt; TYPE_2__* jheads; } ;
struct TYPE_3__ {int jhead; int no_timer; int * sync_callback; } ;
struct TYPE_4__ {int grouped; int log_hash; TYPE_1__ wbuf; int buds_list; } ;


 int ENOMEM ;
 size_t GCHD ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int bud_wbuf_callback ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int kfree (int ) ;
 int ubifs_hash_get_desc (struct ubifs_info*) ;
 int ubifs_wbuf_init (struct ubifs_info*,TYPE_1__*) ;

__attribute__((used)) static int alloc_wbufs(struct ubifs_info *c)
{
 int i, err;

 c->jheads = kcalloc(c->jhead_cnt, sizeof(struct ubifs_jhead),
       GFP_KERNEL);
 if (!c->jheads)
  return -ENOMEM;


 for (i = 0; i < c->jhead_cnt; i++) {
  INIT_LIST_HEAD(&c->jheads[i].buds_list);
  err = ubifs_wbuf_init(c, &c->jheads[i].wbuf);
  if (err)
   return err;

  c->jheads[i].wbuf.sync_callback = &bud_wbuf_callback;
  c->jheads[i].wbuf.jhead = i;
  c->jheads[i].grouped = 1;
  c->jheads[i].log_hash = ubifs_hash_get_desc(c);
  if (IS_ERR(c->jheads[i].log_hash))
   goto out;
 }





 c->jheads[GCHD].wbuf.no_timer = 1;
 c->jheads[GCHD].grouped = 0;

 return 0;

out:
 while (i--)
  kfree(c->jheads[i].log_hash);

 return err;
}
