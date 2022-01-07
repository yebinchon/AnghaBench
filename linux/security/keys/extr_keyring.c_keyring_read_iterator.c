
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keyring_read_iterator_context {scalar_t__ count; scalar_t__ buflen; int buffer; } ;
struct key {int serial; TYPE_1__* type; } ;
struct TYPE_2__ {int name; } ;


 int kenter (char*,int ,int ,scalar_t__,scalar_t__) ;
 struct key* keyring_ptr_to_key (void const*) ;
 int put_user (int ,int ) ;

__attribute__((used)) static int keyring_read_iterator(const void *object, void *data)
{
 struct keyring_read_iterator_context *ctx = data;
 const struct key *key = keyring_ptr_to_key(object);
 int ret;

 kenter("{%s,%d},,{%zu/%zu}",
        key->type->name, key->serial, ctx->count, ctx->buflen);

 if (ctx->count >= ctx->buflen)
  return 1;

 ret = put_user(key->serial, ctx->buffer);
 if (ret < 0)
  return ret;
 ctx->buffer++;
 ctx->count += sizeof(key->serial);
 return 0;
}
