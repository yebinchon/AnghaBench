
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int * hs_hcon; int * hs_hchan; } ;



__attribute__((used)) static void __release_logical_link(struct l2cap_chan *chan)
{
 chan->hs_hchan = ((void*)0);
 chan->hs_hcon = ((void*)0);


}
