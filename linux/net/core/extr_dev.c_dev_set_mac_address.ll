; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.sockaddr*)* }
%struct.net_device.0 = type opaque
%struct.sockaddr = type { i64, i32 }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NET_ADDR_SET = common dso_local global i32 0, align 4
@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_set_mac_address(%struct.net_device* %0, %struct.sockaddr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_device_ops*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 4
  %12 = load %struct.net_device_ops*, %struct.net_device_ops** %11, align 8
  store %struct.net_device_ops* %12, %struct.net_device_ops** %8, align 8
  %13 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %14 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %13, i32 0, i32 0
  %15 = load i32 (%struct.net_device.0*, %struct.sockaddr*)*, i32 (%struct.net_device.0*, %struct.sockaddr*)** %14, align 8
  %16 = icmp ne i32 (%struct.net_device.0*, %struct.sockaddr*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %75

31:                                               ; preds = %20
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @netif_device_present(%struct.net_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %44 = call i32 @dev_pre_changeaddr_notify(%struct.net_device* %39, i32 %42, %struct.netlink_ext_ack* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %38
  %50 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %51 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %50, i32 0, i32 0
  %52 = load i32 (%struct.net_device.0*, %struct.sockaddr*)*, i32 (%struct.net_device.0*, %struct.sockaddr*)** %51, align 8
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = bitcast %struct.net_device* %53 to %struct.net_device.0*
  %55 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %56 = call i32 %52(%struct.net_device.0* %54, %struct.sockaddr* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %49
  %62 = load i32, i32* @NET_ADDR_SET, align 4
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call i32 @call_netdevice_notifiers(i32 %65, %struct.net_device* %66)
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @add_device_randomness(i32 %70, i32 %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %61, %59, %47, %35, %28, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @dev_pre_changeaddr_notify(%struct.net_device*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @add_device_randomness(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
