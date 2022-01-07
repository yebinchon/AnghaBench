; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_determine_display_io_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_determine_display_io_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i64, %struct.per_pid* }
%struct.per_pid = type { i64, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i64, i64, %struct.per_pidcomm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timechart*, i64)* @determine_display_io_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_display_io_tasks(%struct.timechart* %0, i64 %1) #0 {
  %3 = alloca %struct.timechart*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.per_pid*, align 8
  %6 = alloca %struct.per_pidcomm*, align 8
  %7 = alloca i32, align 4
  store %struct.timechart* %0, %struct.timechart** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.timechart*, %struct.timechart** %3, align 8
  %9 = getelementptr inbounds %struct.timechart, %struct.timechart* %8, i32 0, i32 1
  %10 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  store %struct.per_pid* %10, %struct.per_pid** %5, align 8
  br label %11

11:                                               ; preds = %60, %2
  %12 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %13 = icmp ne %struct.per_pid* %12, null
  br i1 %13, label %14, label %64

14:                                               ; preds = %11
  %15 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %16 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.timechart*, %struct.timechart** %3, align 8
  %21 = getelementptr inbounds %struct.timechart, %struct.timechart* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %24 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %27 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %26, i32 0, i32 2
  %28 = load %struct.per_pidcomm*, %struct.per_pidcomm** %27, align 8
  store %struct.per_pidcomm* %28, %struct.per_pidcomm** %6, align 8
  br label %29

29:                                               ; preds = %56, %25
  %30 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %31 = icmp ne %struct.per_pidcomm* %30, null
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %34 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %36 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %42 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %47 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.timechart*, %struct.timechart** %3, align 8
  %52 = getelementptr inbounds %struct.timechart, %struct.timechart* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %55 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %58 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %57, i32 0, i32 3
  %59 = load %struct.per_pidcomm*, %struct.per_pidcomm** %58, align 8
  store %struct.per_pidcomm* %59, %struct.per_pidcomm** %6, align 8
  br label %29

60:                                               ; preds = %29
  %61 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %62 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %61, i32 0, i32 1
  %63 = load %struct.per_pid*, %struct.per_pid** %62, align 8
  store %struct.per_pid* %63, %struct.per_pid** %5, align 8
  br label %11

64:                                               ; preds = %11
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
