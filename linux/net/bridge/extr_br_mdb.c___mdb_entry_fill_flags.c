
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct br_mdb_entry {unsigned char state; int flags; } ;


 int MDB_FLAGS_FAST_LEAVE ;
 int MDB_FLAGS_OFFLOAD ;
 unsigned char MDB_PG_FLAGS_FAST_LEAVE ;
 unsigned char MDB_PG_FLAGS_OFFLOAD ;
 unsigned char MDB_PG_FLAGS_PERMANENT ;

__attribute__((used)) static void __mdb_entry_fill_flags(struct br_mdb_entry *e, unsigned char flags)
{
 e->state = flags & MDB_PG_FLAGS_PERMANENT;
 e->flags = 0;
 if (flags & MDB_PG_FLAGS_OFFLOAD)
  e->flags |= MDB_FLAGS_OFFLOAD;
 if (flags & MDB_PG_FLAGS_FAST_LEAVE)
  e->flags |= MDB_FLAGS_FAST_LEAVE;
}
