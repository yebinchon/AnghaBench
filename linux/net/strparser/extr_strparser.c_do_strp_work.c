
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* unlock ) (struct strparser*) ;int (* lock ) (struct strparser*) ;} ;
struct strparser {TYPE_1__ cb; int work; scalar_t__ paused; int stopped; } ;


 int ENOMEM ;
 int queue_work (int ,int *) ;
 int strp_read_sock (struct strparser*) ;
 int strp_wq ;
 int stub1 (struct strparser*) ;
 int stub2 (struct strparser*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void do_strp_work(struct strparser *strp)
{



 strp->cb.lock(strp);

 if (unlikely(strp->stopped))
  goto out;

 if (strp->paused)
  goto out;

 if (strp_read_sock(strp) == -ENOMEM)
  queue_work(strp_wq, &strp->work);

out:
 strp->cb.unlock(strp);
}
