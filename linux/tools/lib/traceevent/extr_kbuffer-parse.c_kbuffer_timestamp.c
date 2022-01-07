
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbuffer {unsigned long long timestamp; } ;



unsigned long long kbuffer_timestamp(struct kbuffer *kbuf)
{
 return kbuf->timestamp;
}
