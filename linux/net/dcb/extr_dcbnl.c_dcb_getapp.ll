; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_getapp.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_getapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i32 }
%struct.dcb_app_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dcb_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_getapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dcb_app*, align 8
  %5 = alloca %struct.dcb_app_type*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @spin_lock_bh(i32* @dcb_lock)
  %8 = load %struct.dcb_app*, %struct.dcb_app** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dcb_app_type* @dcb_app_lookup(%struct.dcb_app* %8, i32 %11, i32 -1)
  store %struct.dcb_app_type* %12, %struct.dcb_app_type** %5, align 8
  %13 = load %struct.dcb_app_type*, %struct.dcb_app_type** %5, align 8
  %14 = icmp ne %struct.dcb_app_type* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.dcb_app_type*, %struct.dcb_app_type** %5, align 8
  %17 = getelementptr inbounds %struct.dcb_app_type, %struct.dcb_app_type* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = call i32 @spin_unlock_bh(i32* @dcb_lock)
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.dcb_app_type* @dcb_app_lookup(%struct.dcb_app*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
