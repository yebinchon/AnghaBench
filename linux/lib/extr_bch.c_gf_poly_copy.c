
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf_poly {int deg; } ;


 int GF_POLY_SZ (int ) ;
 int memcpy (struct gf_poly*,struct gf_poly*,int ) ;

__attribute__((used)) static void gf_poly_copy(struct gf_poly *dst, struct gf_poly *src)
{
 memcpy(dst, src, GF_POLY_SZ(src->deg));
}
