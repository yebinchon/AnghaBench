
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmpipe_proto_header {int dummy; } ;
struct hvsock {int fin_sent; int chan; } ;
struct hvs_send_buf {int dummy; } ;


 int hvs_send_data (int ,struct hvs_send_buf*,int ) ;

__attribute__((used)) static void hvs_shutdown_lock_held(struct hvsock *hvs, int mode)
{
 struct vmpipe_proto_header hdr;

 if (hvs->fin_sent || !hvs->chan)
  return;


 (void)hvs_send_data(hvs->chan, (struct hvs_send_buf *)&hdr, 0);
 hvs->fin_sent = 1;
}
