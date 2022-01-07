
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct dso {int symbols; } ;
typedef int FILE ;


 int STB_GLOBAL ;
 int STT_FUNC ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int hex2u64 (char*,int *) ;
 struct symbol* symbol__new (int ,int ,int ,int ,char*) ;
 int symbols__insert (int *,struct symbol*) ;

__attribute__((used)) static int dso__load_perf_map(const char *map_path, struct dso *dso)
{
 char *line = ((void*)0);
 size_t n;
 FILE *file;
 int nr_syms = 0;

 file = fopen(map_path, "r");
 if (file == ((void*)0))
  goto out_failure;

 while (!feof(file)) {
  u64 start, size;
  struct symbol *sym;
  int line_len, len;

  line_len = getline(&line, &n, file);
  if (line_len < 0)
   break;

  if (!line)
   goto out_failure;

  line[--line_len] = '\0';

  len = hex2u64(line, &start);

  len++;
  if (len + 2 >= line_len)
   continue;

  len += hex2u64(line + len, &size);

  len++;
  if (len + 2 >= line_len)
   continue;

  sym = symbol__new(start, size, STB_GLOBAL, STT_FUNC, line + len);

  if (sym == ((void*)0))
   goto out_delete_line;

  symbols__insert(&dso->symbols, sym);
  nr_syms++;
 }

 free(line);
 fclose(file);

 return nr_syms;

out_delete_line:
 free(line);
out_failure:
 return -1;
}
