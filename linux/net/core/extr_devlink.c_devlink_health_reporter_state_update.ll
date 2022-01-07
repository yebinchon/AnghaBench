; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_state_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DEVLINK_HEALTH_REPORTER_STATE_HEALTHY = common dso_local global i32 0, align 4
@DEVLINK_HEALTH_REPORTER_STATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_health_reporter_state_update(%struct.devlink_health_reporter* %0, i32 %1) #0 {
  %3 = alloca %struct.devlink_health_reporter*, align 8
  %4 = alloca i32, align 4
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DEVLINK_HEALTH_REPORTER_STATE_HEALTHY, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DEVLINK_HEALTH_REPORTER_STATE_ERROR, align 4
  %11 = icmp ne i32 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %39

18:                                               ; preds = %12
  %19 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %3, align 8
  %20 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %39

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %3, align 8
  %28 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %3, align 8
  %30 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %3, align 8
  %33 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @trace_devlink_health_reporter_state_update(i32 %31, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %25, %24, %17
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @trace_devlink_health_reporter_state_update(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
