; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_reset_dimensions.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_reset_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@common_sort_dimensions = common dso_local global %struct.TYPE_6__* null, align 8
@hpp_sort_dimensions = common dso_local global %struct.TYPE_6__* null, align 8
@bstack_sort_dimensions = common dso_local global %struct.TYPE_6__* null, align 8
@memory_sort_dimensions = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_dimensions() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i32, i32* %1, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @common_sort_dimensions, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %4)
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @common_sort_dimensions, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %2

16:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %1, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hpp_sort_dimensions, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hpp_sort_dimensions, align 8
  %24 = load i32, i32* %1, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %1, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %17

31:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* %1, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bstack_sort_dimensions, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %34)
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bstack_sort_dimensions, align 8
  %39 = load i32, i32* %1, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %1, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %32

46:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %58, %46
  %48 = load i32, i32* %1, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @memory_sort_dimensions, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %49)
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @memory_sort_dimensions, align 8
  %54 = load i32, i32* %1, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %1, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %47

61:                                               ; preds = %47
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
