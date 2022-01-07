
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_runtime_stream {int stream_status; int status_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int sst_get_stream_status(struct sst_runtime_stream *stream)
{
 int state;
 unsigned long flags;

 spin_lock_irqsave(&stream->status_lock, flags);
 state = stream->stream_status;
 spin_unlock_irqrestore(&stream->status_lock, flags);
 return state;
}
