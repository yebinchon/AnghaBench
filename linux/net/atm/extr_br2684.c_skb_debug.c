
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;


 int DUMP_OFFSET ;
 int KERN_DEBUG ;
 int NUM2PRINT ;
 int min (int ,int ) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,int ,int) ;

__attribute__((used)) static void skb_debug(const struct sk_buff *skb)
{





}
