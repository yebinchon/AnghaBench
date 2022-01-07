; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_select_value_fn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_select_value_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hist_field_s64 = common dso_local global i32* null, align 8
@hist_field_u64 = common dso_local global i32* null, align 8
@hist_field_s32 = common dso_local global i32* null, align 8
@hist_field_u32 = common dso_local global i32* null, align 8
@hist_field_s16 = common dso_local global i32* null, align 8
@hist_field_u16 = common dso_local global i32* null, align 8
@hist_field_s8 = common dso_local global i32* null, align 8
@hist_field_u8 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @select_value_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @select_value_fn(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %39 [
    i32 8, label %7
    i32 4, label %15
    i32 2, label %23
    i32 1, label %31
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32*, i32** @hist_field_s64, align 8
  store i32* %11, i32** %5, align 8
  br label %14

12:                                               ; preds = %7
  %13 = load i32*, i32** @hist_field_u64, align 8
  store i32* %13, i32** %5, align 8
  br label %14

14:                                               ; preds = %12, %10
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32*, i32** @hist_field_s32, align 8
  store i32* %19, i32** %5, align 8
  br label %22

20:                                               ; preds = %15
  %21 = load i32*, i32** @hist_field_u32, align 8
  store i32* %21, i32** %5, align 8
  br label %22

22:                                               ; preds = %20, %18
  br label %39

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** @hist_field_s16, align 8
  store i32* %27, i32** %5, align 8
  br label %30

28:                                               ; preds = %23
  %29 = load i32*, i32** @hist_field_u16, align 8
  store i32* %29, i32** %5, align 8
  br label %30

30:                                               ; preds = %28, %26
  br label %39

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** @hist_field_s8, align 8
  store i32* %35, i32** %5, align 8
  br label %38

36:                                               ; preds = %31
  %37 = load i32*, i32** @hist_field_u8, align 8
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %2, %38, %30, %22, %14
  %40 = load i32*, i32** %5, align 8
  ret i32* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
