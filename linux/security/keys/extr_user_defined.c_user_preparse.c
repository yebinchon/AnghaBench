
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_key_payload {size_t datalen; int data; } ;
struct TYPE_2__ {struct user_key_payload** data; } ;
struct key_preparsed_payload {size_t datalen; size_t quotalen; int data; TYPE_1__ payload; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct user_key_payload* kmalloc (int,int ) ;
 int memcpy (int ,int ,size_t) ;

int user_preparse(struct key_preparsed_payload *prep)
{
 struct user_key_payload *upayload;
 size_t datalen = prep->datalen;

 if (datalen <= 0 || datalen > 32767 || !prep->data)
  return -EINVAL;

 upayload = kmalloc(sizeof(*upayload) + datalen, GFP_KERNEL);
 if (!upayload)
  return -ENOMEM;


 prep->quotalen = datalen;
 prep->payload.data[0] = upayload;
 upayload->datalen = datalen;
 memcpy(upayload->data, prep->data, datalen);
 return 0;
}
