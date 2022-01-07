; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_determine_display_tasks_filtered.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_determine_display_tasks_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32, i64, %struct.per_pid* }
%struct.per_pid = type { i32, i32, i64, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i32, i64, %struct.per_pidcomm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timechart*)* @determine_display_tasks_filtered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_display_tasks_filtered(%struct.timechart* %0) #0 {
  %2 = alloca %struct.timechart*, align 8
  %3 = alloca %struct.per_pid*, align 8
  %4 = alloca %struct.per_pidcomm*, align 8
  %5 = alloca i32, align 4
  store %struct.timechart* %0, %struct.timechart** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.timechart*, %struct.timechart** %2, align 8
  %7 = getelementptr inbounds %struct.timechart, %struct.timechart* %6, i32 0, i32 2
  %8 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  store %struct.per_pid* %8, %struct.per_pid** %3, align 8
  br label %9

9:                                                ; preds = %83, %1
  %10 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %11 = icmp ne %struct.per_pid* %10, null
  br i1 %11, label %12, label %87

12:                                               ; preds = %9
  %13 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %14 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %16 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.timechart*, %struct.timechart** %2, align 8
  %21 = getelementptr inbounds %struct.timechart, %struct.timechart* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %24 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %12
  %26 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %27 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.timechart*, %struct.timechart** %2, align 8
  %32 = getelementptr inbounds %struct.timechart, %struct.timechart* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %35 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %38 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %37, i32 0, i32 4
  %39 = load %struct.per_pidcomm*, %struct.per_pidcomm** %38, align 8
  store %struct.per_pidcomm* %39, %struct.per_pidcomm** %4, align 8
  br label %40

40:                                               ; preds = %79, %36
  %41 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %42 = icmp ne %struct.per_pidcomm* %41, null
  br i1 %42, label %43, label %83

43:                                               ; preds = %40
  %44 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %45 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %47 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.timechart*, %struct.timechart** %2, align 8
  %52 = getelementptr inbounds %struct.timechart, %struct.timechart* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %55 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %58 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %59 = call i64 @passes_filter(%struct.per_pid* %57, %struct.per_pidcomm* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %63 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %65 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %70 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.timechart*, %struct.timechart** %2, align 8
  %75 = getelementptr inbounds %struct.timechart, %struct.timechart* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %78 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.per_pidcomm*, %struct.per_pidcomm** %4, align 8
  %81 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %80, i32 0, i32 3
  %82 = load %struct.per_pidcomm*, %struct.per_pidcomm** %81, align 8
  store %struct.per_pidcomm* %82, %struct.per_pidcomm** %4, align 8
  br label %40

83:                                               ; preds = %40
  %84 = load %struct.per_pid*, %struct.per_pid** %3, align 8
  %85 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %84, i32 0, i32 3
  %86 = load %struct.per_pid*, %struct.per_pid** %85, align 8
  store %struct.per_pid* %86, %struct.per_pid** %3, align 8
  br label %9

87:                                               ; preds = %9
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @passes_filter(%struct.per_pid*, %struct.per_pidcomm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
