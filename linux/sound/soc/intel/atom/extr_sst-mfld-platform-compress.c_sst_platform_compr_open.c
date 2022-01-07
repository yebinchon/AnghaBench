
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sst_runtime_stream {scalar_t__ id; TYPE_2__* compr_ops; int status_lock; } ;
struct snd_compr_stream {struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct sst_runtime_stream* private_data; } ;
struct TYPE_8__ {TYPE_3__* dev; TYPE_2__* compr_ops; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {int (* power ) (TYPE_3__*,int) ;} ;
struct TYPE_5__ {int owner; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SST_PLATFORM_INIT ;
 int kfree (struct sst_runtime_stream*) ;
 struct sst_runtime_stream* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 TYPE_4__* sst ;
 int sst_set_stream_status (struct sst_runtime_stream*,int ) ;
 int stub1 (TYPE_3__*,int) ;
 int try_module_get (int ) ;

__attribute__((used)) static int sst_platform_compr_open(struct snd_compr_stream *cstream)
{

 int ret_val = 0;
 struct snd_compr_runtime *runtime = cstream->runtime;
 struct sst_runtime_stream *stream;

 stream = kzalloc(sizeof(*stream), GFP_KERNEL);
 if (!stream)
  return -ENOMEM;

 spin_lock_init(&stream->status_lock);


 if (!sst || !try_module_get(sst->dev->driver->owner)) {
  pr_err("no device available to run\n");
  ret_val = -ENODEV;
  goto out_ops;
 }
 stream->compr_ops = sst->compr_ops;
 stream->id = 0;


 sst->compr_ops->power(sst->dev, 1);

 sst_set_stream_status(stream, SST_PLATFORM_INIT);
 runtime->private_data = stream;
 return 0;
out_ops:
 kfree(stream);
 return ret_val;
}
