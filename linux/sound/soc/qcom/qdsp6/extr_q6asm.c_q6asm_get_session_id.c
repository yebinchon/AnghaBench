
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_client {int session; } ;



int q6asm_get_session_id(struct audio_client *c)
{
 return c->session;
}
