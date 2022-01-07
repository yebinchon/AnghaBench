; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32, i32, %struct.devlink* }
%struct.TYPE_2__ = type { i32 }
%struct.devlink = type { i32 }

@DEVLINK_HEALTH_REPORTER_STATE_ERROR = common dso_local global i8* null, align 8
@DEVLINK_HEALTH_REPORTER_STATE_HEALTHY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ECANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_health_report(%struct.devlink_health_reporter* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_health_reporter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.devlink*, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %11 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %10, i32 0, i32 7
  %12 = load %struct.devlink*, %struct.devlink** %11, align 8
  store %struct.devlink* %12, %struct.devlink** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.devlink*, %struct.devlink** %9, align 8
  %19 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %20 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @trace_devlink_health_report(%struct.devlink* %18, i32 %23, i8* %24)
  %26 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %27 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %31 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** @DEVLINK_HEALTH_REPORTER_STATE_ERROR, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %36 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %38 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DEVLINK_HEALTH_REPORTER_STATE_HEALTHY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %48 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %52 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @msecs_to_jiffies(i32 %53)
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %45, %41
  %57 = load %struct.devlink*, %struct.devlink** %9, align 8
  %58 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %59 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %64 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @jiffies, align 8
  %67 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %68 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = call i32 @trace_devlink_health_recover_aborted(%struct.devlink* %57, i32 %62, i32 %65, i64 %70)
  %72 = load i32, i32* @ECANCELED, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %97

74:                                               ; preds = %45, %3
  %75 = load i8*, i8** @DEVLINK_HEALTH_REPORTER_STATE_ERROR, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %78 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %80 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %79, i32 0, i32 3
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @devlink_health_do_dump(%struct.devlink_health_reporter* %82, i8* %83)
  %85 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %86 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %85, i32 0, i32 3
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %89 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %74
  %93 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %5, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @devlink_health_reporter_recover(%struct.devlink_health_reporter* %93, i8* %94)
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %92, %56
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_devlink_health_report(%struct.devlink*, i32, i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @trace_devlink_health_recover_aborted(%struct.devlink*, i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @devlink_health_do_dump(%struct.devlink_health_reporter*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @devlink_health_reporter_recover(%struct.devlink_health_reporter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
