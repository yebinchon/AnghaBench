; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_pe_order.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_pe_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PE_SIZE_PTE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PE_SIZE_PMD = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4
@PE_SIZE_PUD = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pe_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pe_order(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PE_SIZE_PTE, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @PAGE_SHIFT, align 4
  %9 = load i32, i32* @PAGE_SHIFT, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PE_SIZE_PMD, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @PMD_SHIFT, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PE_SIZE_PUD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @PUD_SHIFT, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %23, %15, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
