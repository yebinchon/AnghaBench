
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6asm {int adev; int slock; struct audio_client** session; } ;
struct device {int parent; } ;
struct audio_client {int session; int perf_mode; int stream_id; int lock; int cmd_lock; int cmd_wait; int refcount; int adev; int io_mode; void* priv; struct q6asm* q6asm; struct device* dev; int cb; } ;
typedef int q6asm_cb ;


 int ASM_SYNC_IO_MODE ;
 int ENOMEM ;
 struct audio_client* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 struct q6asm* dev_get_drvdata (int ) ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 struct audio_client* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct audio_client* q6asm_get_audio_client (struct q6asm*,int) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct audio_client *q6asm_audio_client_alloc(struct device *dev, q6asm_cb cb,
           void *priv, int stream_id,
           int perf_mode)
{
 struct q6asm *a = dev_get_drvdata(dev->parent);
 struct audio_client *ac;
 unsigned long flags;

 ac = q6asm_get_audio_client(a, stream_id + 1);
 if (ac) {
  dev_err(dev, "Audio Client already active\n");
  return ac;
 }

 ac = kzalloc(sizeof(*ac), GFP_KERNEL);
 if (!ac)
  return ERR_PTR(-ENOMEM);

 spin_lock_irqsave(&a->slock, flags);
 a->session[stream_id + 1] = ac;
 spin_unlock_irqrestore(&a->slock, flags);
 ac->session = stream_id + 1;
 ac->cb = cb;
 ac->dev = dev;
 ac->q6asm = a;
 ac->priv = priv;
 ac->io_mode = ASM_SYNC_IO_MODE;
 ac->perf_mode = perf_mode;

 ac->stream_id = 1;
 ac->adev = a->adev;
 kref_init(&ac->refcount);

 init_waitqueue_head(&ac->cmd_wait);
 mutex_init(&ac->cmd_lock);
 spin_lock_init(&ac->lock);

 return ac;
}
