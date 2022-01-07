
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtp_stream {int mutex; int * protocol; } ;


 int WARN_ON (int ) ;
 int amdtp_stream_running (struct amdtp_stream*) ;
 int kfree (int *) ;
 int mutex_destroy (int *) ;

void amdtp_stream_destroy(struct amdtp_stream *s)
{

 if (s->protocol == ((void*)0))
  return;

 WARN_ON(amdtp_stream_running(s));
 kfree(s->protocol);
 mutex_destroy(&s->mutex);
}
