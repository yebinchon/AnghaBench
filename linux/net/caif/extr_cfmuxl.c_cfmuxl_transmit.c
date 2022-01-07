
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cfpkt {int dummy; } ;
struct cfmuxl {int dummy; } ;
struct cflayer {int (* transmit ) (struct cflayer*,struct cfpkt*) ;} ;
struct caif_payload_info {int hdr_len; int channel_id; TYPE_1__* dev_info; } ;
struct TYPE_2__ {int id; } ;


 int BUG_ON (int) ;
 int ENOTCONN ;
 int cffrml_hold (struct cflayer*) ;
 int cffrml_put (struct cflayer*) ;
 int cfpkt_add_head (struct cfpkt*,int *,int) ;
 int cfpkt_destroy (struct cfpkt*) ;
 struct caif_payload_info* cfpkt_info (struct cfpkt*) ;
 struct cfmuxl* container_obj (struct cflayer*) ;
 struct cflayer* get_dn (struct cfmuxl*,TYPE_1__*) ;
 int pr_debug (char*,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct cflayer*,struct cfpkt*) ;

__attribute__((used)) static int cfmuxl_transmit(struct cflayer *layr, struct cfpkt *pkt)
{
 struct cfmuxl *muxl = container_obj(layr);
 int err;
 u8 linkid;
 struct cflayer *dn;
 struct caif_payload_info *info = cfpkt_info(pkt);
 BUG_ON(!info);

 rcu_read_lock();

 dn = get_dn(muxl, info->dev_info);
 if (dn == ((void*)0)) {
  pr_debug("Send data on unknown phy ID = %d (0x%x)\n",
   info->dev_info->id, info->dev_info->id);
  rcu_read_unlock();
  cfpkt_destroy(pkt);
  return -ENOTCONN;
 }

 info->hdr_len += 1;
 linkid = info->channel_id;
 cfpkt_add_head(pkt, &linkid, 1);


 cffrml_hold(dn);

 rcu_read_unlock();

 err = dn->transmit(dn, pkt);

 cffrml_put(dn);
 return err;
}
