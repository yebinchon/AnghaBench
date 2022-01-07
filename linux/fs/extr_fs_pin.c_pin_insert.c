
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; } ;
struct fs_pin {int m_list; int s_list; } ;
struct TYPE_4__ {int mnt_pins; } ;
struct TYPE_3__ {int s_pins; } ;


 int hlist_add_head (int *,int *) ;
 int pin_lock ;
 TYPE_2__* real_mount (struct vfsmount*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pin_insert(struct fs_pin *pin, struct vfsmount *m)
{
 spin_lock(&pin_lock);
 hlist_add_head(&pin->s_list, &m->mnt_sb->s_pins);
 hlist_add_head(&pin->m_list, &real_mount(m)->mnt_pins);
 spin_unlock(&pin_lock);
}
