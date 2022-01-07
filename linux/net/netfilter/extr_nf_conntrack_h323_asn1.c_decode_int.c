
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_t {int sz; int attr; unsigned int lb; int offset; int name; } ;
struct bitstr {int cur; } ;



 int BYTE_ALIGN (struct bitstr*) ;

 int DECODE ;
 int H323_ERROR_BOUND ;
 int H323_ERROR_NONE ;
 int INC_BITS (struct bitstr*,int) ;
 int PRINT (char*,...) ;
 int TAB_SIZE ;


 int get_bits (struct bitstr*,int) ;
 unsigned int get_len (struct bitstr*) ;
 unsigned int get_uint (struct bitstr*,unsigned int) ;
 scalar_t__ nf_h323_error_boundary (struct bitstr*,int,int) ;

__attribute__((used)) static int decode_int(struct bitstr *bs, const struct field_t *f,
                      char *base, int level)
{
 unsigned int len;

 PRINT("%*.s%s", level * TAB_SIZE, " ", f->name);

 switch (f->sz) {
 case 131:
  BYTE_ALIGN(bs);
  bs->cur++;
  break;
 case 128:
  BYTE_ALIGN(bs);
  bs->cur += 2;
  break;
 case 130:
  if (nf_h323_error_boundary(bs, 0, 2))
   return H323_ERROR_BOUND;
  len = get_bits(bs, 2) + 1;
  BYTE_ALIGN(bs);
  if (base && (f->attr & DECODE)) {
   unsigned int v = get_uint(bs, len) + f->lb;
   PRINT(" = %u", v);
   *((unsigned int *)(base + f->offset)) = v;
  }
  bs->cur += len;
  break;
 case 129:
  BYTE_ALIGN(bs);
  if (nf_h323_error_boundary(bs, 2, 0))
   return H323_ERROR_BOUND;
  len = get_len(bs);
  bs->cur += len;
  break;
 default:
  INC_BITS(bs, f->sz);
  break;
 }

 PRINT("\n");

 if (nf_h323_error_boundary(bs, 0, 0))
  return H323_ERROR_BOUND;
 return H323_ERROR_NONE;
}
