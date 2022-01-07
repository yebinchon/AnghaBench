; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_adjust_signedness.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_adjust_signedness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @adjust_signedness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adjust_signedness(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %12 [
    i32 1, label %8
    i32 2, label %9
    i32 4, label %10
    i32 8, label %11
  ]

8:                                                ; preds = %2
  store i64 127, i64* %6, align 8
  br label %14

9:                                                ; preds = %2
  store i64 32767, i64* %6, align 8
  br label %14

10:                                               ; preds = %2
  store i64 2147483647, i64* %6, align 8
  br label %14

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %2, %11
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %3, align 8
  br label %29

14:                                               ; preds = %10, %9, %8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = sub i64 -1, %16
  %18 = and i64 %15, %17
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %3, align 8
  br label %29

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* %6, align 8
  %27 = xor i64 %26, -1
  %28 = or i64 %25, %27
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %22, %20, %12
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
