; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_do_interval_measure.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_do_interval_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)*, i32, i32 }

@wake_cpus = common dso_local global i64 0, align 8
@cpu_count = common dso_local global i32 0, align 4
@avail_monitors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"HW C-state residency monitor: %s - States: %d\0A\00", align 1
@monitors = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_interval_measure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @wake_cpus, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %15, %7
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @cpu_count, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bind_cpu(i32 %13)
  br label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %8

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %1
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @avail_monitors, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @monitors, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @monitors, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dprint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %38)
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @monitors, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (...)*, i32 (...)** %45, align 8
  %47 = call i32 (...) %46()
  br label %48

48:                                               ; preds = %24
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %20

51:                                               ; preds = %20
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @sleep(i32 %52)
  %54 = load i64, i64* @wake_cpus, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %64, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @cpu_count, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @bind_cpu(i32 %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %57

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %51
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %82, %68
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @avail_monitors, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @monitors, align 8
  %75 = load i32, i32* %3, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (...)*, i32 (...)** %79, align 8
  %81 = call i32 (...) %80()
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %3, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %69

85:                                               ; preds = %69
  ret i32 0
}

declare dso_local i32 @bind_cpu(i32) #1

declare dso_local i32 @dprint(i8*, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
