
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ubifs_info {int min_io_size; int leb_size; } ;


 int ALIGN (int,int) ;

__attribute__((used)) static int get_pad_len(const struct ubifs_info *c, uint8_t *buf, int len)
{
 int offs, pad_len;

 if (c->min_io_size == 1)
  return 0;
 offs = c->leb_size - len;
 pad_len = ALIGN(offs, c->min_io_size) - offs;
 return pad_len;
}
