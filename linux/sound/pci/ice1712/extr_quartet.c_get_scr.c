
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct qtet_spec* spec; } ;
struct qtet_spec {unsigned int scr; } ;



__attribute__((used)) static unsigned int get_scr(struct snd_ice1712 *ice)
{
 struct qtet_spec *spec = ice->spec;
 return spec->scr;
}
