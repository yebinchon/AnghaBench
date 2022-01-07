
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
struct snd_ff {TYPE_3__* spec; TYPE_1__ async_handler; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;
typedef int __le32 ;
struct TYPE_6__ {TYPE_2__* protocol; } ;
struct TYPE_5__ {int (* handle_midi_msg ) (struct snd_ff*,unsigned int,int *,size_t) ;} ;


 int RCODE_COMPLETE ;
 int fw_send_response (struct fw_card*,struct fw_request*,int ) ;
 int stub1 (struct snd_ff*,unsigned int,int *,size_t) ;

__attribute__((used)) static void handle_midi_msg(struct fw_card *card, struct fw_request *request,
       int tcode, int destination, int source,
       int generation, unsigned long long offset,
       void *data, size_t length, void *callback_data)
{
 struct snd_ff *ff = callback_data;
 __le32 *buf = data;

 fw_send_response(card, request, RCODE_COMPLETE);

 offset -= ff->async_handler.offset;
 ff->spec->protocol->handle_midi_msg(ff, (unsigned int)offset, buf,
         length);
}
