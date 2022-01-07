
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_BADADDR ;
 int KDB_STATE (int ) ;
 int KDB_STATE_CLEAR (int ) ;
 int KDB_STATE_SET (int ) ;
 int SUPPRESS ;
 int kdb_printf (char*,unsigned long) ;
 int probe_kernel_read (char*,char*,size_t) ;

int kdb_getarea_size(void *res, unsigned long addr, size_t size)
{
 int ret = probe_kernel_read((char *)res, (char *)addr, size);
 if (ret) {
  if (!KDB_STATE(SUPPRESS)) {
   kdb_printf("kdb_getarea: Bad address 0x%lx\n", addr);
   KDB_STATE_SET(SUPPRESS);
  }
  ret = KDB_BADADDR;
 } else {
  KDB_STATE_CLEAR(SUPPRESS);
 }
 return ret;
}
