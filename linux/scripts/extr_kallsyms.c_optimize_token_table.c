
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int build_initial_tok_table () ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int insert_real_symbols_in_table () ;
 int optimize_result () ;
 int stderr ;
 int table_cnt ;

__attribute__((used)) static void optimize_token_table(void)
{
 build_initial_tok_table();

 insert_real_symbols_in_table();


 if (!table_cnt) {
  fprintf(stderr, "No valid symbol.\n");
  exit(1);
 }

 optimize_result();
}
