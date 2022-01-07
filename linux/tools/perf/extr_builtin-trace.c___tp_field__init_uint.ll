; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c___tp_field__init_uint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c___tp_field__init_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_field = type { i32, i32 }

@tp_field__u8 = common dso_local global i32 0, align 4
@tp_field__swapped_u16 = common dso_local global i32 0, align 4
@tp_field__u16 = common dso_local global i32 0, align 4
@tp_field__swapped_u32 = common dso_local global i32 0, align 4
@tp_field__u32 = common dso_local global i32 0, align 4
@tp_field__swapped_u64 = common dso_local global i32 0, align 4
@tp_field__u64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tp_field*, i32, i32, i32)* @__tp_field__init_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tp_field__init_uint(%struct.tp_field* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tp_field*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tp_field* %0, %struct.tp_field** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.tp_field*, %struct.tp_field** %6, align 8
  %12 = getelementptr inbounds %struct.tp_field, %struct.tp_field* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %51 [
    i32 1, label %14
    i32 2, label %18
    i32 4, label %29
    i32 8, label %40
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @tp_field__u8, align 4
  %16 = load %struct.tp_field*, %struct.tp_field** %6, align 8
  %17 = getelementptr inbounds %struct.tp_field, %struct.tp_field* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %52

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @tp_field__swapped_u16, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @tp_field__u16, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.tp_field*, %struct.tp_field** %6, align 8
  %28 = getelementptr inbounds %struct.tp_field, %struct.tp_field* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %52

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @tp_field__swapped_u32, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @tp_field__u32, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.tp_field*, %struct.tp_field** %6, align 8
  %39 = getelementptr inbounds %struct.tp_field, %struct.tp_field* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %52

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @tp_field__swapped_u64, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @tp_field__u64, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.tp_field*, %struct.tp_field** %6, align 8
  %50 = getelementptr inbounds %struct.tp_field, %struct.tp_field* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %52

51:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %53

52:                                               ; preds = %47, %36, %25, %14
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
