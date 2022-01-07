
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfpkt {int dummy; } ;
struct cfmuxl {int dummy; } ;
struct cflayer {int (* receive ) (struct cflayer*,struct cfpkt*) ;} ;


 int EPROTO ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ cfpkt_extr_head (struct cfpkt*,int *,int) ;
 int cfsrvl_get (struct cflayer*) ;
 int cfsrvl_put (struct cflayer*) ;
 struct cfmuxl* container_obj (struct cflayer*) ;
 struct cflayer* get_up (struct cfmuxl*,int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct cflayer*,struct cfpkt*) ;

__attribute__((used)) static int cfmuxl_receive(struct cflayer *layr, struct cfpkt *pkt)
{
 int ret;
 struct cfmuxl *muxl = container_obj(layr);
 u8 id;
 struct cflayer *up;
 if (cfpkt_extr_head(pkt, &id, 1) < 0) {
  pr_err("erroneous Caif Packet\n");
  cfpkt_destroy(pkt);
  return -EPROTO;
 }
 rcu_read_lock();
 up = get_up(muxl, id);

 if (up == ((void*)0)) {
  pr_debug("Received data on unknown link ID = %d (0x%x)"
   " up == NULL", id, id);
  cfpkt_destroy(pkt);





  rcu_read_unlock();
  return 0;
 }


 cfsrvl_get(up);
 rcu_read_unlock();

 ret = up->receive(up, pkt);

 cfsrvl_put(up);
 return ret;
}
