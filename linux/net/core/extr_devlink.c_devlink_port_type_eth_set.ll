; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_type_eth_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_type_eth_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32 }
%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i8*, i32)*, i32 (%struct.net_device.1*, %struct.netdev_phys_item_id*)* }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque
%struct.netdev_phys_item_id = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_PORT_TYPE_ETH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_port_type_eth_set(%struct.devlink_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.devlink_port*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netdev_phys_item_id, align 4
  %10 = alloca i32, align 4
  store %struct.devlink_port* %0, %struct.devlink_port** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.net_device_ops*, %struct.net_device_ops** %12, align 8
  store %struct.net_device_ops* %13, %struct.net_device_ops** %5, align 8
  %14 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %15 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.net_device.0*, i8*, i32)*, i32 (%struct.net_device.0*, i8*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.net_device.0*, i8*, i32)* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load i32, i32* @IFNAMSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %24 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device.0*, i8*, i32)*, i32 (%struct.net_device.0*, i8*, i32)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = bitcast %struct.net_device* %26 to %struct.net_device.0*
  %28 = trunc i64 %20 to i32
  %29 = call i32 %25(%struct.net_device.0* %27, i8* %22, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  br label %37

37:                                               ; preds = %18, %2
  %38 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %39 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %38, i32 0, i32 1
  %40 = load i32 (%struct.net_device.1*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device.1*, %struct.netdev_phys_item_id*)** %39, align 8
  %41 = icmp ne i32 (%struct.net_device.1*, %struct.netdev_phys_item_id*)* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %44 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %43, i32 0, i32 1
  %45 = load i32 (%struct.net_device.1*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device.1*, %struct.netdev_phys_item_id*)** %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = bitcast %struct.net_device* %46 to %struct.net_device.1*
  %48 = call i32 %45(%struct.net_device.1* %47, %struct.netdev_phys_item_id* %9)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  br label %55

55:                                               ; preds = %42, %37
  %56 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %57 = load i32, i32* @DEVLINK_PORT_TYPE_ETH, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @__devlink_port_type_set(%struct.devlink_port* %56, i32 %57, %struct.net_device* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WARN_ON(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @__devlink_port_type_set(%struct.devlink_port*, i32, %struct.net_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
