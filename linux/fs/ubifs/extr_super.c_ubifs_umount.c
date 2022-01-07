
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
struct TYPE_3__ {int vol_id; int ubi_num; } ;
struct ubifs_info {int bottom_up_buf; int sbuf; int ileb_buf; TYPE_2__ bu; int write_reserve_buf; int mst_node; int rcvrd_mst_node; int cbuf; int auth_hash_name; int auth_key_name; scalar_t__ bgt; int infos_list; TYPE_1__ vi; } ;


 int dbg_debugfs_exit_fs (struct ubifs_info*) ;
 int dbg_gen (char*,int ,int ) ;
 int destroy_journal (struct ubifs_info*) ;
 int free_orphans (struct ubifs_info*) ;
 int free_wbufs (struct ubifs_info*) ;
 int kfree (int ) ;
 int kthread_stop (scalar_t__) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_debugging_exit (struct ubifs_info*) ;
 int ubifs_exit_authentication (struct ubifs_info*) ;
 int ubifs_infos_lock ;
 int ubifs_lpt_free (struct ubifs_info*,int ) ;
 int vfree (int ) ;

__attribute__((used)) static void ubifs_umount(struct ubifs_info *c)
{
 dbg_gen("un-mounting UBI device %d, volume %d", c->vi.ubi_num,
  c->vi.vol_id);

 dbg_debugfs_exit_fs(c);
 spin_lock(&ubifs_infos_lock);
 list_del(&c->infos_list);
 spin_unlock(&ubifs_infos_lock);

 if (c->bgt)
  kthread_stop(c->bgt);

 destroy_journal(c);
 free_wbufs(c);
 free_orphans(c);
 ubifs_lpt_free(c, 0);
 ubifs_exit_authentication(c);

 kfree(c->auth_key_name);
 kfree(c->auth_hash_name);
 kfree(c->cbuf);
 kfree(c->rcvrd_mst_node);
 kfree(c->mst_node);
 kfree(c->write_reserve_buf);
 kfree(c->bu.buf);
 vfree(c->ileb_buf);
 vfree(c->sbuf);
 kfree(c->bottom_up_buf);
 ubifs_debugging_exit(c);
}
