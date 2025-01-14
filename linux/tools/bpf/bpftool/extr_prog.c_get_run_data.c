
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t UINT32_MAX ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (void*,int,size_t,int *) ;
 int free (void*) ;
 void* malloc (size_t) ;
 int p_err (char*,...) ;
 void* realloc (void*,size_t) ;
 int * stdin ;
 int strcmp (char const*,char*) ;
 size_t strerror (int ) ;

__attribute__((used)) static int get_run_data(const char *fname, void **data_ptr, unsigned int *size)
{
 size_t block_size = 256;
 size_t buf_size = block_size;
 size_t nb_read = 0;
 void *tmp;
 FILE *f;

 if (!fname) {
  *data_ptr = ((void*)0);
  *size = 0;
  return 0;
 }

 if (!strcmp(fname, "-"))
  f = stdin;
 else
  f = fopen(fname, "r");
 if (!f) {
  p_err("failed to open %s: %s", fname, strerror(errno));
  return -1;
 }

 *data_ptr = malloc(block_size);
 if (!*data_ptr) {
  p_err("failed to allocate memory for data_in/ctx_in: %s",
        strerror(errno));
  goto err_fclose;
 }

 while ((nb_read += fread(*data_ptr + nb_read, 1, block_size, f))) {
  if (feof(f))
   break;
  if (ferror(f)) {
   p_err("failed to read data_in/ctx_in from %s: %s",
         fname, strerror(errno));
   goto err_free;
  }
  if (nb_read > buf_size - block_size) {
   if (buf_size == UINT32_MAX) {
    p_err("data_in/ctx_in is too long (max: %d)",
          UINT32_MAX);
    goto err_free;
   }

   buf_size *= 2;
   tmp = realloc(*data_ptr, buf_size);
   if (!tmp) {
    p_err("failed to reallocate data_in/ctx_in: %s",
          strerror(errno));
    goto err_free;
   }
   *data_ptr = tmp;
  }
 }
 if (f != stdin)
  fclose(f);

 *size = nb_read;
 return 0;

err_free:
 free(*data_ptr);
 *data_ptr = ((void*)0);
err_fclose:
 if (f != stdin)
  fclose(f);
 return -1;
}
