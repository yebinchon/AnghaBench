
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_data {int len; int bytes; int packet; } ;


 int dump_packet (int *,int ,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void decoding_failed(struct test_data *d)
{
 pr_debug("Decoding failed!\n");
 pr_debug("Decoding:  ");
 dump_packet(&d->packet, d->bytes, d->len);
}
