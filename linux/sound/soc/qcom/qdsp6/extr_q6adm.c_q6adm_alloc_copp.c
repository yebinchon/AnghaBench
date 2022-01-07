
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6copp {int copp_idx; int afe_port; int wait; struct q6adm* adm; } ;
struct q6adm {int * copp_bitmap; } ;


 int EBUSY ;
 int ENOMEM ;
 struct q6copp* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int MAX_COPPS_PER_PORT ;
 int find_first_zero_bit (int *,int) ;
 int init_waitqueue_head (int *) ;
 struct q6copp* kzalloc (int,int ) ;
 int set_bit (int,int *) ;

__attribute__((used)) static struct q6copp *q6adm_alloc_copp(struct q6adm *adm, int port_idx)
{
 struct q6copp *c;
 int idx;

 idx = find_first_zero_bit(&adm->copp_bitmap[port_idx],
      MAX_COPPS_PER_PORT);

 if (idx > MAX_COPPS_PER_PORT)
  return ERR_PTR(-EBUSY);

 c = kzalloc(sizeof(*c), GFP_ATOMIC);
 if (!c)
  return ERR_PTR(-ENOMEM);

 set_bit(idx, &adm->copp_bitmap[port_idx]);
 c->copp_idx = idx;
 c->afe_port = port_idx;
 c->adm = adm;

 init_waitqueue_head(&c->wait);

 return c;
}
