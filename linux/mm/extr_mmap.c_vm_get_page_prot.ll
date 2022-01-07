; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_get_page_prot.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_get_page_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@protection_map = common dso_local global i32* null, align 8
@VM_READ = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_get_page_prot(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32*, i32** @protection_map, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @VM_READ, align 8
  %7 = load i64, i64* @VM_WRITE, align 8
  %8 = or i64 %6, %7
  %9 = load i64, i64* @VM_EXEC, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @VM_SHARED, align 8
  %12 = or i64 %10, %11
  %13 = and i64 %5, %12
  %14 = getelementptr inbounds i32, i32* %4, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pgprot_val(i32 %15)
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @arch_vm_get_page_prot(i64 %17)
  %19 = call i32 @pgprot_val(i32 %18)
  %20 = or i32 %16, %19
  %21 = call i32 @__pgprot(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @arch_filter_pgprot(i32 %22)
  ret i32 %23
}

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @arch_vm_get_page_prot(i64) #1

declare dso_local i32 @arch_filter_pgprot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
