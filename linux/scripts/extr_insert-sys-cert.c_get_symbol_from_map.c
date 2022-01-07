
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym {int offset; char* name; void* content; int address; scalar_t__ size; } ;
typedef int FILE ;
typedef int Elf_Ehdr ;


 int EXIT_FAILURE ;
 int LINE_SIZE ;
 int SEEK_SET ;
 int err (char*,...) ;
 int exit (int ) ;
 scalar_t__ fgets (char*,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int get_offset_from_address (int *,int ) ;
 int perror (char*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void get_symbol_from_map(Elf_Ehdr *hdr, FILE *f, char *name,
    struct sym *s)
{
 char l[LINE_SIZE];
 char *w, *p, *n;

 s->size = 0;
 s->address = 0;
 s->offset = 0;
 if (fseek(f, 0, SEEK_SET) != 0) {
  perror("File seek failed");
  exit(EXIT_FAILURE);
 }
 while (fgets(l, LINE_SIZE, f)) {
  p = strchr(l, '\n');
  if (!p) {
   err("Missing line ending.\n");
   return;
  }
  n = strstr(l, name);
  if (n)
   break;
 }
 if (!n) {
  err("Unable to find symbol: %s\n", name);
  return;
 }
 w = strchr(l, ' ');
 if (!w)
  return;

 *w = '\0';
 s->address = strtoul(l, ((void*)0), 16);
 if (s->address == 0)
  return;
 s->offset = get_offset_from_address(hdr, s->address);
 s->name = name;
 s->content = (void *)hdr + s->offset;
}
