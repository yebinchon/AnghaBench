; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_obj_del_deferred.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_obj_del_deferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32, i32 (%struct.net_device.0*, i32, i32)*, i32 }
%struct.net_device.0 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed (err=%d) to del object (id=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*)* @switchdev_port_obj_del_deferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchdev_port_obj_del_deferred(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.switchdev_obj*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.switchdev_obj*
  store %struct.switchdev_obj* %8, %struct.switchdev_obj** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %11 = call i32 @switchdev_port_obj_del_now(%struct.net_device* %9, %struct.switchdev_obj* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %23 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_err(%struct.net_device* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %14, %2
  %27 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %28 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %27, i32 0, i32 1
  %29 = load i32 (%struct.net_device.0*, i32, i32)*, i32 (%struct.net_device.0*, i32, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.net_device.0*, i32, i32)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %33 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %32, i32 0, i32 1
  %34 = load i32 (%struct.net_device.0*, i32, i32)*, i32 (%struct.net_device.0*, i32, i32)** %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = bitcast %struct.net_device* %35 to %struct.net_device.0*
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %39 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %34(%struct.net_device.0* %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @switchdev_port_obj_del_now(%struct.net_device*, %struct.switchdev_obj*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
