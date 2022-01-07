
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int dummy; } ;


 long L2CAP_CONN_TIMEOUT ;

__attribute__((used)) static long chan_get_sndtimeo_cb(struct l2cap_chan *chan)
{
 return L2CAP_CONN_TIMEOUT;
}
