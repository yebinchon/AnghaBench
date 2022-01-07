
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_t {unsigned int lb; int sz; int name; } ;
struct bitstr {int dummy; } ;


 int BYTE_ALIGN (struct bitstr*) ;
 int H323_ERROR_BOUND ;
 int H323_ERROR_NONE ;
 int INC_BITS (struct bitstr*,unsigned int) ;
 int PRINT (char*,int,char*,int ) ;
 int TAB_SIZE ;
 unsigned int get_bits (struct bitstr*,int ) ;
 scalar_t__ nf_h323_error_boundary (struct bitstr*,int ,int ) ;

__attribute__((used)) static int decode_numstr(struct bitstr *bs, const struct field_t *f,
                         char *base, int level)
{
 unsigned int len;

 PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);


 if (nf_h323_error_boundary(bs, 0, f->sz))
  return H323_ERROR_BOUND;
 len = get_bits(bs, f->sz) + f->lb;

 BYTE_ALIGN(bs);
 INC_BITS(bs, (len << 2));

 if (nf_h323_error_boundary(bs, 0, 0))
  return H323_ERROR_BOUND;
 return H323_ERROR_NONE;
}
