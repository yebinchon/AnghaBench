
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct elfhdr {int e_phentsize; int e_phnum; int e_phoff; } ;
struct elf_phdr {int dummy; } ;
typedef int loff_t ;


 int EIO ;
 unsigned int ELF_MIN_ALIGN ;
 int GFP_KERNEL ;
 int kernel_read (struct file*,struct elf_phdr*,unsigned int,int *) ;
 int kfree (struct elf_phdr*) ;
 struct elf_phdr* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct elf_phdr *load_elf_phdrs(const struct elfhdr *elf_ex,
           struct file *elf_file)
{
 struct elf_phdr *elf_phdata = ((void*)0);
 int retval, err = -1;
 loff_t pos = elf_ex->e_phoff;
 unsigned int size;





 if (elf_ex->e_phentsize != sizeof(struct elf_phdr))
  goto out;



 size = sizeof(struct elf_phdr) * elf_ex->e_phnum;
 if (size == 0 || size > 65536 || size > ELF_MIN_ALIGN)
  goto out;

 elf_phdata = kmalloc(size, GFP_KERNEL);
 if (!elf_phdata)
  goto out;


 retval = kernel_read(elf_file, elf_phdata, size, &pos);
 if (retval != size) {
  err = (retval < 0) ? retval : -EIO;
  goto out;
 }


 err = 0;
out:
 if (err) {
  kfree(elf_phdata);
  elf_phdata = ((void*)0);
 }
 return elf_phdata;
}
