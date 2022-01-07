; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_compat_running_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_compat_running_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.devlink = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_compat_running_version(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.devlink*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i32 @dev_hold(%struct.net_device* %8)
  %10 = call i32 (...) @rtnl_unlock()
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.devlink* @netdev_to_devlink(%struct.net_device* %11)
  store %struct.devlink* %12, %struct.devlink** %7, align 8
  %13 = load %struct.devlink*, %struct.devlink** %7, align 8
  %14 = icmp ne %struct.devlink* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.devlink*, %struct.devlink** %7, align 8
  %17 = getelementptr inbounds %struct.devlink, %struct.devlink* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %3
  br label %34

23:                                               ; preds = %15
  %24 = load %struct.devlink*, %struct.devlink** %7, align 8
  %25 = getelementptr inbounds %struct.devlink, %struct.devlink* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.devlink*, %struct.devlink** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @__devlink_compat_running_version(%struct.devlink* %27, i8* %28, i64 %29)
  %31 = load %struct.devlink*, %struct.devlink** %7, align 8
  %32 = getelementptr inbounds %struct.devlink, %struct.devlink* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  br label %34

34:                                               ; preds = %23, %22
  %35 = call i32 (...) @rtnl_lock()
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @dev_put(%struct.net_device* %36)
  ret void
}

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local %struct.devlink* @netdev_to_devlink(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__devlink_compat_running_version(%struct.devlink*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
