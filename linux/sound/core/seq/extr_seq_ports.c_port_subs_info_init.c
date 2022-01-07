
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_port_subs_info {int * close; int * open; int list_mutex; int list_lock; scalar_t__ exclusive; scalar_t__ count; int list_head; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;
 int rwlock_init (int *) ;

__attribute__((used)) static void port_subs_info_init(struct snd_seq_port_subs_info *grp)
{
 INIT_LIST_HEAD(&grp->list_head);
 grp->count = 0;
 grp->exclusive = 0;
 rwlock_init(&grp->list_lock);
 init_rwsem(&grp->list_mutex);
 grp->open = ((void*)0);
 grp->close = ((void*)0);
}
