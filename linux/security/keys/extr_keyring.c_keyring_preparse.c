
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_preparsed_payload {scalar_t__ datalen; } ;


 int EINVAL ;

__attribute__((used)) static int keyring_preparse(struct key_preparsed_payload *prep)
{
 return prep->datalen != 0 ? -EINVAL : 0;
}
