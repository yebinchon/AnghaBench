; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_cmp_num.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_cmp_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tracing_map_cmp_none = common dso_local global i32 0, align 4
@tracing_map_cmp_s64 = common dso_local global i32 0, align 4
@tracing_map_cmp_u64 = common dso_local global i32 0, align 4
@tracing_map_cmp_s32 = common dso_local global i32 0, align 4
@tracing_map_cmp_u32 = common dso_local global i32 0, align 4
@tracing_map_cmp_s16 = common dso_local global i32 0, align 4
@tracing_map_cmp_u16 = common dso_local global i32 0, align 4
@tracing_map_cmp_s8 = common dso_local global i32 0, align 4
@tracing_map_cmp_u8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tracing_map_cmp_num(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @tracing_map_cmp_none, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %40 [
    i32 8, label %8
    i32 4, label %16
    i32 2, label %24
    i32 1, label %32
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @tracing_map_cmp_s64, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @tracing_map_cmp_u64, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11
  br label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @tracing_map_cmp_s32, align 4
  store i32 %20, i32* %5, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @tracing_map_cmp_u32, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %40

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @tracing_map_cmp_s16, align 4
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @tracing_map_cmp_u16, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %40

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @tracing_map_cmp_s8, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @tracing_map_cmp_u8, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35
  br label %40

40:                                               ; preds = %2, %39, %31, %23, %15
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
