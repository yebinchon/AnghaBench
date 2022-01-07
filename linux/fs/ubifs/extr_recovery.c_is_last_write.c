
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ubifs_info {int leb_size; int max_write_size; } ;


 int ALIGN (int,int ) ;
 int is_empty (int *,int) ;

__attribute__((used)) static int is_last_write(const struct ubifs_info *c, void *buf, int offs)
{
 int empty_offs, check_len;
 uint8_t *p;





 empty_offs = ALIGN(offs + 1, c->max_write_size);
 check_len = c->leb_size - empty_offs;
 p = buf + empty_offs - offs;
 return is_empty(p, check_len);
}
