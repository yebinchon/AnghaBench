; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_ieee_delapp.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_ieee_delapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }
%struct.dcb_app = type { i32 }
%struct.dcb_app_type = type { i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@dcb_lock = common dso_local global i32 0, align 4
@DCB_APP_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_ieee_delapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dcb_app*, align 8
  %5 = alloca %struct.dcb_app_type*, align 8
  %6 = alloca %struct.dcb_app_type, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %4, align 8
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %6, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %6, i32 0, i32 2
  %15 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %16 = call i32 @memcpy(i32* %14, %struct.dcb_app* %15, i32 4)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %20, align 8
  %22 = icmp ne i32 (%struct.net_device*)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 %28(%struct.net_device* %29)
  %31 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %2
  %33 = call i32 @spin_lock_bh(i32* @dcb_lock)
  %34 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %39 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.dcb_app_type* @dcb_app_lookup(%struct.dcb_app* %34, i32 %37, i32 %40)
  store %struct.dcb_app_type* %41, %struct.dcb_app_type** %5, align 8
  %42 = icmp ne %struct.dcb_app_type* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.dcb_app_type*, %struct.dcb_app_type** %5, align 8
  %45 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %44, i32 0, i32 0
  %46 = call i32 @list_del(i32* %45)
  %47 = load %struct.dcb_app_type*, %struct.dcb_app_type** %5, align 8
  %48 = call i32 @kfree(%struct.dcb_app_type* %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %43, %32
  %50 = call i32 @spin_unlock_bh(i32* @dcb_lock)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @DCB_APP_EVENT, align 4
  %55 = call i32 @call_dcbevent_notifiers(i32 %54, %struct.dcb_app_type* %6)
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @memcpy(i32*, %struct.dcb_app*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.dcb_app_type* @dcb_app_lookup(%struct.dcb_app*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dcb_app_type*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @call_dcbevent_notifiers(i32, %struct.dcb_app_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
