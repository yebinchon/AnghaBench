; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_compat_flash_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_compat_flash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.devlink = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devlink*, i8*, i32*, i32*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_compat_flash_update(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @dev_hold(%struct.net_device* %7)
  %9 = call i32 (...) @rtnl_unlock()
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.devlink* @netdev_to_devlink(%struct.net_device* %10)
  store %struct.devlink* %11, %struct.devlink** %5, align 8
  %12 = load %struct.devlink*, %struct.devlink** %5, align 8
  %13 = icmp ne %struct.devlink* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.devlink*, %struct.devlink** %5, align 8
  %16 = getelementptr inbounds %struct.devlink, %struct.devlink* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.devlink*, i8*, i32*, i32*)*, i32 (%struct.devlink*, i8*, i32*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.devlink*, i8*, i32*, i32*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %39

24:                                               ; preds = %14
  %25 = load %struct.devlink*, %struct.devlink** %5, align 8
  %26 = getelementptr inbounds %struct.devlink, %struct.devlink* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.devlink*, %struct.devlink** %5, align 8
  %29 = getelementptr inbounds %struct.devlink, %struct.devlink* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.devlink*, i8*, i32*, i32*)*, i32 (%struct.devlink*, i8*, i32*, i32*)** %31, align 8
  %33 = load %struct.devlink*, %struct.devlink** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 %32(%struct.devlink* %33, i8* %34, i32* null, i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.devlink*, %struct.devlink** %5, align 8
  %37 = getelementptr inbounds %struct.devlink, %struct.devlink* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %24, %21
  %40 = call i32 (...) @rtnl_lock()
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @dev_put(%struct.net_device* %41)
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local %struct.devlink* @netdev_to_devlink(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
