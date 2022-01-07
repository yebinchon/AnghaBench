; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_util.c_vm_commit_limit.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_util.c_vm_commit_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sysctl_overcommit_kbytes = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@sysctl_overcommit_ratio = common dso_local global i32 0, align 4
@total_swap_pages = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_commit_limit() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @sysctl_overcommit_kbytes, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @sysctl_overcommit_kbytes, align 4
  %6 = load i32, i32* @PAGE_SHIFT, align 4
  %7 = sub nsw i32 %6, 10
  %8 = ashr i32 %5, %7
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %1, align 8
  br label %18

10:                                               ; preds = %0
  %11 = call i32 (...) @totalram_pages()
  %12 = call i32 (...) @hugetlb_total_pages()
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* @sysctl_overcommit_ratio, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sdiv i32 %15, 100
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %1, align 8
  br label %18

18:                                               ; preds = %10, %4
  %19 = load i64, i64* @total_swap_pages, align 8
  %20 = load i64, i64* %1, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare dso_local i32 @totalram_pages(...) #1

declare dso_local i32 @hugetlb_total_pages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
