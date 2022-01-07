
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct filename_trans_datum {int otype; } ;
struct filename_trans {int stype; int ttype; int tclass; int * name; } ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int put_entry (int *,int,int,void*) ;
 int strlen (int *) ;

__attribute__((used)) static int filename_write_helper(void *key, void *data, void *ptr)
{
 __le32 buf[4];
 struct filename_trans *ft = key;
 struct filename_trans_datum *otype = data;
 void *fp = ptr;
 int rc;
 u32 len;

 len = strlen(ft->name);
 buf[0] = cpu_to_le32(len);
 rc = put_entry(buf, sizeof(u32), 1, fp);
 if (rc)
  return rc;

 rc = put_entry(ft->name, sizeof(char), len, fp);
 if (rc)
  return rc;

 buf[0] = cpu_to_le32(ft->stype);
 buf[1] = cpu_to_le32(ft->ttype);
 buf[2] = cpu_to_le32(ft->tclass);
 buf[3] = cpu_to_le32(otype->otype);

 rc = put_entry(buf, sizeof(u32), 4, fp);
 if (rc)
  return rc;

 return 0;
}
