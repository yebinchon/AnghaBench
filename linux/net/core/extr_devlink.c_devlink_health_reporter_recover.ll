; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_recover.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_HEALTH_REPORTER_STATE_HEALTHY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, i8*)* @devlink_health_reporter_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_health_reporter_recover(%struct.devlink_health_reporter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_health_reporter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %8 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.devlink_health_reporter*, i8*)**
  %12 = load i32 (%struct.devlink_health_reporter*, i8*)*, i32 (%struct.devlink_health_reporter*, i8*)** %11, align 8
  %13 = icmp ne i32 (%struct.devlink_health_reporter*, i8*)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %19 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.devlink_health_reporter*, i8*)**
  %23 = load i32 (%struct.devlink_health_reporter*, i8*)*, i32 (%struct.devlink_health_reporter*, i8*)** %22, align 8
  %24 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 %23(%struct.devlink_health_reporter* %24, i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %17
  %32 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %33 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @DEVLINK_HEALTH_REPORTER_STATE_HEALTHY, align 4
  %37 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %38 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %41 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %29, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
