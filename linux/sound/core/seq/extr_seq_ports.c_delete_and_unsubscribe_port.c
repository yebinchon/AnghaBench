
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct snd_seq_subscribers {int info; struct list_head dest_list; struct list_head src_list; } ;
struct snd_seq_port_subs_info {int list_mutex; int list_lock; scalar_t__ exclusive; } ;
struct snd_seq_client_port {struct snd_seq_port_subs_info c_dest; struct snd_seq_port_subs_info c_src; } ;
struct snd_seq_client {int dummy; } ;


 int down_write (int *) ;
 int list_del_init (struct list_head*) ;
 int list_empty (struct list_head*) ;
 int unsubscribe_port (struct snd_seq_client*,struct snd_seq_client_port*,struct snd_seq_port_subs_info*,int *,int) ;
 int up_write (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void delete_and_unsubscribe_port(struct snd_seq_client *client,
     struct snd_seq_client_port *port,
     struct snd_seq_subscribers *subs,
     bool is_src, bool ack)
{
 struct snd_seq_port_subs_info *grp;
 struct list_head *list;
 bool empty;

 grp = is_src ? &port->c_src : &port->c_dest;
 list = is_src ? &subs->src_list : &subs->dest_list;
 down_write(&grp->list_mutex);
 write_lock_irq(&grp->list_lock);
 empty = list_empty(list);
 if (!empty)
  list_del_init(list);
 grp->exclusive = 0;
 write_unlock_irq(&grp->list_lock);

 if (!empty)
  unsubscribe_port(client, port, grp, &subs->info, ack);
 up_write(&grp->list_mutex);
}
