; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_adjust_period.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_adjust_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__*, %struct.hw_perf_event }
%struct.TYPE_2__ = type { i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)* }
%struct.hw_perf_event = type { i32, i32 }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32, i32, i32)* @perf_adjust_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_adjust_period(%struct.perf_event* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hw_perf_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  store %struct.hw_perf_event* %14, %struct.hw_perf_event** %9, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @perf_calculate_period(%struct.perf_event* %15, i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.hw_perf_event*, %struct.hw_perf_event** %9, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %24, 7
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %9, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.hw_perf_event*, %struct.hw_perf_event** %9, align 8
  %38 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hw_perf_event*, %struct.hw_perf_event** %9, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %39, i32 0, i32 1
  %41 = call i32 @local64_read(i32* %40)
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 8, %42
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %52, align 8
  %54 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %55 = load i32, i32* @PERF_EF_UPDATE, align 4
  %56 = call i32 %53(%struct.perf_event* %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %45
  %58 = load %struct.hw_perf_event*, %struct.hw_perf_event** %9, align 8
  %59 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %58, i32 0, i32 1
  %60 = call i32 @local64_set(i32* %59, i32 0)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.perf_event*, i32)*, i32 (%struct.perf_event*, i32)** %67, align 8
  %69 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %70 = load i32, i32* @PERF_EF_RELOAD, align 4
  %71 = call i32 %68(%struct.perf_event* %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %57
  br label %73

73:                                               ; preds = %72, %35
  ret void
}

declare dso_local i32 @perf_calculate_period(%struct.perf_event*, i32, i32) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
