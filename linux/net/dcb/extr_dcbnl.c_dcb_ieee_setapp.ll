; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_ieee_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_ieee_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)* }
%struct.dcb_app = type { i32 }
%struct.dcb_app_type = type { i32, i32, i32 }

@dcb_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@DCB_APP_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_ieee_setapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dcb_app*, align 8
  %5 = alloca %struct.dcb_app_type, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %5, i32 0, i32 1
  %12 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %13 = call i32 @memcpy(i32* %11, %struct.dcb_app* %12, i32 4)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %17, align 8
  %19 = icmp ne i32 (%struct.net_device*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 %25(%struct.net_device* %26)
  %28 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %5, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %20, %2
  %30 = call i32 @spin_lock_bh(i32* @dcb_lock)
  %31 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %36 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dcb_app_lookup(%struct.dcb_app* %31, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @EEXIST, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %49

43:                                               ; preds = %29
  %44 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dcb_app_add(%struct.dcb_app* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %40
  %50 = call i32 @spin_unlock_bh(i32* @dcb_lock)
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @DCB_APP_EVENT, align 4
  %55 = call i32 @call_dcbevent_notifiers(i32 %54, %struct.dcb_app_type* %5)
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @memcpy(i32*, %struct.dcb_app*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @dcb_app_lookup(%struct.dcb_app*, i32, i32) #1

declare dso_local i32 @dcb_app_add(%struct.dcb_app*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @call_dcbevent_notifiers(i32, %struct.dcb_app_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
