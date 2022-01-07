
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put_unaligned_be32 (int,unsigned char*) ;

__attribute__((used)) static void int_to_threadref(unsigned char *id, int value)
{
 put_unaligned_be32(value, id);
}
