
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field_t {int name; } ;
struct bitstr {int dummy; } ;


 int H323_ERROR_BOUND ;
 int H323_ERROR_NONE ;
 int INC_BIT (struct bitstr*) ;
 int PRINT (char*,int,char*,int ) ;
 int TAB_SIZE ;
 scalar_t__ nf_h323_error_boundary (struct bitstr*,int ,int ) ;

__attribute__((used)) static int decode_bool(struct bitstr *bs, const struct field_t *f,
                       char *base, int level)
{
 PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);

 INC_BIT(bs);
 if (nf_h323_error_boundary(bs, 0, 0))
  return H323_ERROR_BOUND;
 return H323_ERROR_NONE;
}
