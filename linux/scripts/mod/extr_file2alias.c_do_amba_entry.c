
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD (void*,int ,int) ;
 int amba_id ;
 int append_nibble_mask (char**,int,int) ;
 int fatal (char*,char const*,int,int) ;
 int id ;
 int mask ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int do_amba_entry(const char *filename,
    void *symval, char *alias)
{
 unsigned int digit;
 char *p = alias;
 DEF_FIELD(symval, amba_id, id);
 DEF_FIELD(symval, amba_id, mask);

 if ((id & mask) != id)
  fatal("%s: Masked-off bit(s) of AMBA device ID are non-zero: "
        "id=0x%08X, mask=0x%08X.  Please fix this driver.\n",
        filename, id, mask);

 p += sprintf(alias, "amba:d");
 for (digit = 0; digit < 8; digit++)
  append_nibble_mask(&p,
       (id >> (4 * (7 - digit))) & 0xf,
       (mask >> (4 * (7 - digit))) & 0xf);

 return 1;
}
