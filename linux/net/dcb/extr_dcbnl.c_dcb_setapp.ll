; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*)* }
%struct.dcb_app = type { i64 }
%struct.dcb_app_type = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@dcb_lock = common dso_local global i32 0, align 4
@DCB_APP_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_setapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dcb_app*, align 8
  %5 = alloca %struct.dcb_app_type*, align 8
  %6 = alloca %struct.dcb_app_type, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %6, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %6, i32 0, i32 1
  %13 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %14 = call i32 @memcpy(%struct.TYPE_4__* %12, %struct.dcb_app* %13, i32 8)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %18, align 8
  %20 = icmp ne i32 (%struct.net_device*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %25, align 8
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 %26(%struct.net_device* %27)
  %29 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  br label %30

30:                                               ; preds = %21, %2
  %31 = call i32 @spin_lock_bh(i32* @dcb_lock)
  %32 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.dcb_app_type* @dcb_app_lookup(%struct.dcb_app* %32, i32 %35, i32 -1)
  store %struct.dcb_app_type* %36, %struct.dcb_app_type** %5, align 8
  %37 = load %struct.dcb_app_type*, %struct.dcb_app_type** %5, align 8
  %38 = icmp ne %struct.dcb_app_type* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %30
  %40 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %41 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %46 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dcb_app_type*, %struct.dcb_app_type** %5, align 8
  %49 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  br label %57

51:                                               ; preds = %39
  %52 = load %struct.dcb_app_type*, %struct.dcb_app_type** %5, align 8
  %53 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %52, i32 0, i32 0
  %54 = call i32 @list_del(i32* %53)
  %55 = load %struct.dcb_app_type*, %struct.dcb_app_type** %5, align 8
  %56 = call i32 @kfree(%struct.dcb_app_type* %55)
  br label %57

57:                                               ; preds = %51, %44
  br label %70

58:                                               ; preds = %30
  %59 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %60 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dcb_app_add(%struct.dcb_app* %64, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %63, %58
  br label %70

70:                                               ; preds = %69, %57
  %71 = call i32 @spin_unlock_bh(i32* @dcb_lock)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @DCB_APP_EVENT, align 4
  %76 = call i32 @call_dcbevent_notifiers(i32 %75, %struct.dcb_app_type* %6)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.dcb_app*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.dcb_app_type* @dcb_app_lookup(%struct.dcb_app*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dcb_app_type*) #1

declare dso_local i32 @dcb_app_add(%struct.dcb_app*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @call_dcbevent_notifiers(i32, %struct.dcb_app_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
