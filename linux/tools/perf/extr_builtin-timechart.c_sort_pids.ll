; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_sort_pids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_sort_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { %struct.per_pid* }
%struct.per_pid = type { i64, i64, %struct.per_pid* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*)* @sort_pids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_pids(%struct.timechart* %0) #0 {
  %2 = alloca %struct.timechart*, align 8
  %3 = alloca %struct.per_pid*, align 8
  %4 = alloca %struct.per_pid*, align 8
  %5 = alloca %struct.per_pid*, align 8
  %6 = alloca %struct.per_pid*, align 8
  store %struct.timechart* %0, %struct.timechart** %2, align 8
  store %struct.per_pid* null, %struct.per_pid** %3, align 8
  br label %7

7:                                                ; preds = %87, %25, %1
  %8 = load %struct.timechart*, %struct.timechart** %2, align 8
  %9 = getelementptr inbounds %struct.timechart, %struct.timechart* %8, i32 0, i32 0
  %10 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %11 = icmp ne %struct.per_pid* %10, null
  br i1 %11, label %12, label %88

12:                                               ; preds = %7
  %13 = load %struct.timechart*, %struct.timechart** %2, align 8
  %14 = getelementptr inbounds %struct.timechart, %struct.timechart* %13, i32 0, i32 0
  %15 = load %struct.per_pid*, %struct.per_pid** %14, align 8
  store %struct.per_pid* %15, %struct.per_pid** %4, align 8
  %16 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %17 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %16, i32 0, i32 2
  %18 = load %struct.per_pid*, %struct.per_pid** %17, align 8
  %19 = load %struct.timechart*, %struct.timechart** %2, align 8
  %20 = getelementptr inbounds %struct.timechart, %struct.timechart* %19, i32 0, i32 0
  store %struct.per_pid* %18, %struct.per_pid** %20, align 8
  %21 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %22 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %21, i32 0, i32 2
  store %struct.per_pid* null, %struct.per_pid** %22, align 8
  %23 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %24 = icmp eq %struct.per_pid* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  store %struct.per_pid* %26, %struct.per_pid** %3, align 8
  %27 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %28 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %27, i32 0, i32 2
  store %struct.per_pid* null, %struct.per_pid** %28, align 8
  br label %7

29:                                               ; preds = %12
  store %struct.per_pid* null, %struct.per_pid** %6, align 8
  %30 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  store %struct.per_pid* %30, %struct.per_pid** %5, align 8
  br label %31

31:                                               ; preds = %86, %70, %61, %29
  %32 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %33 = icmp ne %struct.per_pid* %32, null
  br i1 %33, label %34, label %87

34:                                               ; preds = %31
  %35 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %36 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %39 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %58, label %42

42:                                               ; preds = %34
  %43 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %44 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %47 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %42
  %51 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %52 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %55 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %50, %34
  %59 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %60 = icmp ne %struct.per_pid* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %63 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %62, i32 0, i32 2
  %64 = load %struct.per_pid*, %struct.per_pid** %63, align 8
  %65 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %66 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %65, i32 0, i32 2
  store %struct.per_pid* %64, %struct.per_pid** %66, align 8
  %67 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %68 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %69 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %68, i32 0, i32 2
  store %struct.per_pid* %67, %struct.per_pid** %69, align 8
  store %struct.per_pid* null, %struct.per_pid** %5, align 8
  br label %31

70:                                               ; preds = %58
  %71 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %72 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %73 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %72, i32 0, i32 2
  store %struct.per_pid* %71, %struct.per_pid** %73, align 8
  %74 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  store %struct.per_pid* %74, %struct.per_pid** %3, align 8
  store %struct.per_pid* null, %struct.per_pid** %5, align 8
  br label %31

75:                                               ; preds = %50, %42
  %76 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  store %struct.per_pid* %76, %struct.per_pid** %6, align 8
  %77 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %78 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %77, i32 0, i32 2
  %79 = load %struct.per_pid*, %struct.per_pid** %78, align 8
  store %struct.per_pid* %79, %struct.per_pid** %5, align 8
  %80 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %81 = icmp ne %struct.per_pid* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %84 = load %struct.per_pid*, %struct.per_pid** %6, align 8
  %85 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %84, i32 0, i32 2
  store %struct.per_pid* %83, %struct.per_pid** %85, align 8
  br label %86

86:                                               ; preds = %82, %75
  br label %31

87:                                               ; preds = %31
  br label %7

88:                                               ; preds = %7
  %89 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %90 = load %struct.timechart*, %struct.timechart** %2, align 8
  %91 = getelementptr inbounds %struct.timechart, %struct.timechart* %90, i32 0, i32 0
  store %struct.per_pid* %89, %struct.per_pid** %91, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
