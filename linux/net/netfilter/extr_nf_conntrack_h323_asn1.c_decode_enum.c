
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_t {int attr; int sz; int name; } ;
struct bitstr {int dummy; } ;


 int EXT ;
 int H323_ERROR_BOUND ;
 int H323_ERROR_NONE ;
 int INC_BITS (struct bitstr*,int) ;
 int PRINT (char*,int,char*,int ) ;
 int TAB_SIZE ;
 scalar_t__ get_bit (struct bitstr*) ;
 scalar_t__ nf_h323_error_boundary (struct bitstr*,int ,int ) ;

__attribute__((used)) static int decode_enum(struct bitstr *bs, const struct field_t *f,
                       char *base, int level)
{
 PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);

 if ((f->attr & EXT) && get_bit(bs)) {
  INC_BITS(bs, 7);
 } else {
  INC_BITS(bs, f->sz);
 }

 if (nf_h323_error_boundary(bs, 0, 0))
  return H323_ERROR_BOUND;
 return H323_ERROR_NONE;
}
