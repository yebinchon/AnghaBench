
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int scid; int chan_type; int omtu; } ;
typedef int __u16 ;


 int L2CAP_CHAN_FIXED ;
 int L2CAP_DEFAULT_MTU ;
 int chan_list_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int l2cap_add_scid(struct l2cap_chan *chan, __u16 scid)
{
 write_lock(&chan_list_lock);


 chan->omtu = L2CAP_DEFAULT_MTU;
 chan->chan_type = L2CAP_CHAN_FIXED;

 chan->scid = scid;

 write_unlock(&chan_list_lock);

 return 0;
}
