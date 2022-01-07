
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_client {int refcount; } ;


 int kref_put (int *,int ) ;
 int q6asm_audio_client_release ;

void q6asm_audio_client_free(struct audio_client *ac)
{
 kref_put(&ac->refcount, q6asm_audio_client_release);
}
