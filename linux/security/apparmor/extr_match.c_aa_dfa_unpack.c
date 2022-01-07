
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_set_header {int dummy; } ;
struct table_header {int td_id; int td_flags; int td_lolen; } ;
struct aa_dfa {scalar_t__ flags; struct table_header** tables; int count; } ;
typedef int __be32 ;
typedef int __be16 ;


 int ACCEPT1_FLAGS (int) ;
 int ACCEPT2_FLAGS (int) ;
 int DFA_FLAG_VERIFY_STATES ;
 int ENOMEM ;
 int EPROTO ;
 struct aa_dfa* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int YYTD_DATA16 ;
 int YYTD_DATA32 ;
 int YYTD_DATA8 ;







 scalar_t__ YYTH_FLAG_DIFF_ENCODE ;
 int YYTH_MAGIC ;
 int dfa_free (struct aa_dfa*) ;
 int kref_init (int *) ;
 int kvfree (struct table_header*) ;
 struct aa_dfa* kzalloc (int,int ) ;
 int ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ table_size (int ,int) ;
 struct table_header* unpack_table (char*,size_t) ;
 int verify_dfa (struct aa_dfa*) ;
 int verify_table_headers (struct table_header**,int) ;

struct aa_dfa *aa_dfa_unpack(void *blob, size_t size, int flags)
{
 int hsize;
 int error = -ENOMEM;
 char *data = blob;
 struct table_header *table = ((void*)0);
 struct aa_dfa *dfa = kzalloc(sizeof(struct aa_dfa), GFP_KERNEL);
 if (!dfa)
  goto fail;

 kref_init(&dfa->count);

 error = -EPROTO;


 if (size < sizeof(struct table_set_header))
  goto fail;

 if (ntohl(*(__be32 *) data) != YYTH_MAGIC)
  goto fail;

 hsize = ntohl(*(__be32 *) (data + 4));
 if (size < hsize)
  goto fail;

 dfa->flags = ntohs(*(__be16 *) (data + 12));
 if (dfa->flags != 0 && dfa->flags != YYTH_FLAG_DIFF_ENCODE)
  goto fail;

 data += hsize;
 size -= hsize;

 while (size > 0) {
  table = unpack_table(data, size);
  if (!table)
   goto fail;

  switch (table->td_id) {
  case 134:
   if (!(table->td_flags & ACCEPT1_FLAGS(flags)))
    goto fail;
   break;
  case 133:
   if (!(table->td_flags & ACCEPT2_FLAGS(flags)))
    goto fail;
   break;
  case 132:
   if (table->td_flags != YYTD_DATA32)
    goto fail;
   break;
  case 130:
  case 128:
  case 131:
   if (table->td_flags != YYTD_DATA16)
    goto fail;
   break;
  case 129:
   if (table->td_flags != YYTD_DATA8)
    goto fail;
   break;
  default:
   goto fail;
  }

  if (dfa->tables[table->td_id])
   goto fail;
  dfa->tables[table->td_id] = table;
  data += table_size(table->td_lolen, table->td_flags);
  size -= table_size(table->td_lolen, table->td_flags);
  table = ((void*)0);
 }
 error = verify_table_headers(dfa->tables, flags);
 if (error)
  goto fail;

 if (flags & DFA_FLAG_VERIFY_STATES) {
  error = verify_dfa(dfa);
  if (error)
   goto fail;
 }

 return dfa;

fail:
 kvfree(table);
 dfa_free(dfa);
 return ERR_PTR(error);
}
