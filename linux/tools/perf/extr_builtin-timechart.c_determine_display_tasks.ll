; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_determine_display_tasks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_determine_display_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32, i64, %struct.per_pid* }
%struct.per_pid = type { i32, i32, i64, i64, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i32, i64, i64, %struct.per_pidcomm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timechart*, i64)* @determine_display_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_display_tasks(%struct.timechart* %0, i64 %1) #0 {
  %3 = alloca %struct.timechart*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.per_pid*, align 8
  %6 = alloca %struct.per_pidcomm*, align 8
  %7 = alloca i32, align 4
  store %struct.timechart* %0, %struct.timechart** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.timechart*, %struct.timechart** %3, align 8
  %9 = getelementptr inbounds %struct.timechart, %struct.timechart* %8, i32 0, i32 2
  %10 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  store %struct.per_pid* %10, %struct.per_pid** %5, align 8
  br label %11

11:                                               ; preds = %93, %2
  %12 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %13 = icmp ne %struct.per_pid* %12, null
  br i1 %13, label %14, label %97

14:                                               ; preds = %11
  %15 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %16 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %18 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.timechart*, %struct.timechart** %3, align 8
  %23 = getelementptr inbounds %struct.timechart, %struct.timechart* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %26 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %14
  %28 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %29 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.timechart*, %struct.timechart** %3, align 8
  %34 = getelementptr inbounds %struct.timechart, %struct.timechart* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %37 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %40 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %46 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %49 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %48, i32 0, i32 5
  %50 = load %struct.per_pidcomm*, %struct.per_pidcomm** %49, align 8
  store %struct.per_pidcomm* %50, %struct.per_pidcomm** %6, align 8
  br label %51

51:                                               ; preds = %89, %47
  %52 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %53 = icmp ne %struct.per_pidcomm* %52, null
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  %55 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %56 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %58 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.timechart*, %struct.timechart** %3, align 8
  %63 = getelementptr inbounds %struct.timechart, %struct.timechart* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %66 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %69 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %75 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %80 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.timechart*, %struct.timechart** %3, align 8
  %85 = getelementptr inbounds %struct.timechart, %struct.timechart* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %88 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %91 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %90, i32 0, i32 4
  %92 = load %struct.per_pidcomm*, %struct.per_pidcomm** %91, align 8
  store %struct.per_pidcomm* %92, %struct.per_pidcomm** %6, align 8
  br label %51

93:                                               ; preds = %51
  %94 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %95 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %94, i32 0, i32 4
  %96 = load %struct.per_pid*, %struct.per_pid** %95, align 8
  store %struct.per_pid* %96, %struct.per_pid** %5, align 8
  br label %11

97:                                               ; preds = %11
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
