
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {int dummy; } ;


 int EINVAL ;
 struct ubi_volume_desc* ERR_PTR (int ) ;
 int IS_ERR (struct ubi_volume_desc*) ;
 scalar_t__ isdigit (char const) ;
 int simple_strtoul (char const*,char**,int ) ;
 struct ubi_volume_desc* ubi_open_volume (int,int,int) ;
 struct ubi_volume_desc* ubi_open_volume_nm (int,char const*,int) ;
 struct ubi_volume_desc* ubi_open_volume_path (char const*,int) ;

__attribute__((used)) static struct ubi_volume_desc *open_ubi(const char *name, int mode)
{
 struct ubi_volume_desc *ubi;
 int dev, vol;
 char *endptr;

 if (!name || !*name)
  return ERR_PTR(-EINVAL);


 ubi = ubi_open_volume_path(name, mode);
 if (!IS_ERR(ubi))
  return ubi;


 if (name[0] != 'u' || name[1] != 'b' || name[2] != 'i')
  return ERR_PTR(-EINVAL);


 if ((name[3] == ':' || name[3] == '!') && name[4] != '\0')
  return ubi_open_volume_nm(0, name + 4, mode);

 if (!isdigit(name[3]))
  return ERR_PTR(-EINVAL);

 dev = simple_strtoul(name + 3, &endptr, 0);


 if (*endptr == '\0')
  return ubi_open_volume(0, dev, mode);


 if (*endptr == '_' && isdigit(endptr[1])) {
  vol = simple_strtoul(endptr + 1, &endptr, 0);
  if (*endptr != '\0')
   return ERR_PTR(-EINVAL);
  return ubi_open_volume(dev, vol, mode);
 }


 if ((*endptr == ':' || *endptr == '!') && endptr[1] != '\0')
  return ubi_open_volume_nm(dev, ++endptr, mode);

 return ERR_PTR(-EINVAL);
}
