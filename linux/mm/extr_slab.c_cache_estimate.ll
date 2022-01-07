; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab.c_cache_estimate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab.c_cache_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@CFLGS_OBJFREELIST_SLAB = common dso_local global i32 0, align 4
@CFLGS_OFF_SLAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i64*)* @cache_estimate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_estimate(i64 %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = load i64, i64* %5, align 8
  %13 = shl i64 %11, %12
  store i64 %13, i64* %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @CFLGS_OBJFREELIST_SLAB, align 4
  %16 = load i32, i32* @CFLGS_OFF_SLAB, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %6, align 8
  %27 = urem i64 %25, %26
  %28 = load i64*, i64** %8, align 8
  store i64 %27, i64* %28, align 8
  br label %40

29:                                               ; preds = %4
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 4
  %33 = udiv i64 %30, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 4
  %38 = urem i64 %35, %37
  %39 = load i64*, i64** %8, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %29, %20
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
