
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6asm {int slock; struct audio_client** session; int dev; } ;
struct audio_client {int session; int refcount; } ;


 int MAX_SESSIONS ;
 int dev_err (int ,char*,int) ;
 int kref_get (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct audio_client *q6asm_get_audio_client(struct q6asm *a,
         int session_id)
{
 struct audio_client *ac = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&a->slock, flags);
 if ((session_id <= 0) || (session_id > MAX_SESSIONS)) {
  dev_err(a->dev, "invalid session: %d\n", session_id);
  goto err;
 }


 if (!a->session[session_id])
  goto err;
 else if (a->session[session_id]->session != session_id)
  goto err;

 ac = a->session[session_id];
 kref_get(&ac->refcount);
err:
 spin_unlock_irqrestore(&a->slock, flags);
 return ac;
}
