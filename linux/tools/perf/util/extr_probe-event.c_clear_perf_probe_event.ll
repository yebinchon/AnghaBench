; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_clear_perf_probe_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_clear_perf_probe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32, %struct.TYPE_2__*, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.perf_probe_arg_field*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.perf_probe_arg_field = type { %struct.TYPE_2__*, %struct.perf_probe_arg_field* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_perf_probe_event(%struct.perf_probe_event* %0) #0 {
  %2 = alloca %struct.perf_probe_event*, align 8
  %3 = alloca %struct.perf_probe_arg_field*, align 8
  %4 = alloca %struct.perf_probe_arg_field*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %2, align 8
  %6 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %6, i32 0, i32 5
  %8 = call i32 @zfree(%struct.TYPE_2__** %7)
  %9 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %9, i32 0, i32 4
  %11 = call i32 @zfree(%struct.TYPE_2__** %10)
  %12 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %12, i32 0, i32 3
  %14 = call i32 @zfree(%struct.TYPE_2__** %13)
  %15 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %16 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %15, i32 0, i32 2
  %17 = call i32 @clear_perf_probe_point(i32* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %71, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %21 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %18
  %25 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %26 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = call i32 @zfree(%struct.TYPE_2__** %31)
  %33 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %34 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @zfree(%struct.TYPE_2__** %39)
  %41 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %42 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @zfree(%struct.TYPE_2__** %47)
  %49 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %50 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %55, align 8
  store %struct.perf_probe_arg_field* %56, %struct.perf_probe_arg_field** %3, align 8
  br label %57

57:                                               ; preds = %60, %24
  %58 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %3, align 8
  %59 = icmp ne %struct.perf_probe_arg_field* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %3, align 8
  %62 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %61, i32 0, i32 1
  %63 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %62, align 8
  store %struct.perf_probe_arg_field* %63, %struct.perf_probe_arg_field** %4, align 8
  %64 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %3, align 8
  %65 = getelementptr inbounds %struct.perf_probe_arg_field, %struct.perf_probe_arg_field* %64, i32 0, i32 0
  %66 = call i32 @zfree(%struct.TYPE_2__** %65)
  %67 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %3, align 8
  %68 = call i32 @free(%struct.perf_probe_arg_field* %67)
  %69 = load %struct.perf_probe_arg_field*, %struct.perf_probe_arg_field** %4, align 8
  store %struct.perf_probe_arg_field* %69, %struct.perf_probe_arg_field** %3, align 8
  br label %57

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %18

74:                                               ; preds = %18
  %75 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %76 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.perf_probe_event*, %struct.perf_probe_event** %2, align 8
  %78 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %77, i32 0, i32 1
  %79 = call i32 @zfree(%struct.TYPE_2__** %78)
  ret void
}

declare dso_local i32 @zfree(%struct.TYPE_2__**) #1

declare dso_local i32 @clear_perf_probe_point(i32*) #1

declare dso_local i32 @free(%struct.perf_probe_arg_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
