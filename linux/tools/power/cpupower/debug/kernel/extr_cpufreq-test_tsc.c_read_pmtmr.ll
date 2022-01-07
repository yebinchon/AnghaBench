; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/debug/kernel/extr_cpufreq-test_tsc.c_read_pmtmr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/debug/kernel/extr_cpufreq-test_tsc.c_read_pmtmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pm_tmr_ioport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @read_pmtmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_pmtmr() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %37, %0
  %5 = load i32, i32* @pm_tmr_ioport, align 4
  %6 = call i64 @inl(i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i32, i32* @pm_tmr_ioport, align 4
  %8 = call i64 @inl(i32 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i32, i32* @pm_tmr_ioport, align 4
  %10 = call i64 @inl(i32 %9)
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %4
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %15, %11
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %1, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* %2, align 8
  %34 = icmp slt i64 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %23, %15
  %38 = phi i1 [ true, %23 ], [ true, %15 ], [ %36, %35 ]
  br i1 %38, label %4, label %39

39:                                               ; preds = %37
  %40 = load i64, i64* %2, align 8
  %41 = and i64 %40, 16777215
  ret i64 %41
}

declare dso_local i64 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
