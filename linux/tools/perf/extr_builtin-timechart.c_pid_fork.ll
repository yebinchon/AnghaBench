; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_fork.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-timechart.c_pid_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timechart = type { i32 }
%struct.per_pid = type { i32, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timechart*, i32, i32, i8*)* @pid_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pid_fork(%struct.timechart* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.timechart*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.per_pid*, align 8
  %10 = alloca %struct.per_pid*, align 8
  store %struct.timechart* %0, %struct.timechart** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.timechart*, %struct.timechart** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.per_pid* @find_create_pid(%struct.timechart* %11, i32 %12)
  store %struct.per_pid* %13, %struct.per_pid** %9, align 8
  %14 = load %struct.timechart*, %struct.timechart** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.per_pid* @find_create_pid(%struct.timechart* %14, i32 %15)
  store %struct.per_pid* %16, %struct.per_pid** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %19 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.per_pid*, %struct.per_pid** %10, align 8
  %21 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %4
  %25 = load %struct.per_pid*, %struct.per_pid** %10, align 8
  %26 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %33 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load %struct.timechart*, %struct.timechart** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.per_pid*, %struct.per_pid** %10, align 8
  %40 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pid_set_comm(%struct.timechart* %37, i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %36, %31, %24, %4
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %48 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %50 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %45
  %54 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %55 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %63 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %68 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %66, i8** %70, align 8
  br label %71

71:                                               ; preds = %60, %53, %45
  ret void
}

declare dso_local %struct.per_pid* @find_create_pid(%struct.timechart*, i32) #1

declare dso_local i32 @pid_set_comm(%struct.timechart*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
