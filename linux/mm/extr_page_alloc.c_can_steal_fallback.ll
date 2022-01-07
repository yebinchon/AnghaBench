; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_can_steal_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_can_steal_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pageblock_order = common dso_local global i32 0, align 4
@MIGRATE_RECLAIMABLE = common dso_local global i32 0, align 4
@MIGRATE_UNMOVABLE = common dso_local global i32 0, align 4
@page_group_by_mobility_disabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @can_steal_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_steal_fallback(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @pageblock_order, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @pageblock_order, align 4
  %13 = udiv i32 %12, 2
  %14 = icmp uge i32 %11, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MIGRATE_RECLAIMABLE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MIGRATE_UNMOVABLE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @page_group_by_mobility_disabled, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %19, %15, %10
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
