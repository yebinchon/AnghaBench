; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt.c_fdt_header_size_.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt.c_fdt_header_size_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_V1_SIZE = common dso_local global i64 0, align 8
@FDT_V2_SIZE = common dso_local global i64 0, align 8
@FDT_V3_SIZE = common dso_local global i64 0, align 8
@FDT_V16_SIZE = common dso_local global i64 0, align 8
@FDT_V17_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fdt_header_size_(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i64, i64* @FDT_V1_SIZE, align 8
  store i64 %7, i64* %2, align 8
  br label %25

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i64, i64* @FDT_V2_SIZE, align 8
  store i64 %12, i64* %2, align 8
  br label %25

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 3
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i64, i64* @FDT_V3_SIZE, align 8
  store i64 %17, i64* %2, align 8
  br label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %19, 16
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64, i64* @FDT_V16_SIZE, align 8
  store i64 %22, i64* %2, align 8
  br label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @FDT_V17_SIZE, align 8
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %23, %21, %16, %11, %6
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
