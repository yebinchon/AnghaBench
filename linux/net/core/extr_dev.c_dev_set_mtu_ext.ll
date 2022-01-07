; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_set_mtu_ext.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_set_mtu_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"mtu less than device minimum\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mtu greater than device maximum\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NETDEV_PRECHANGEMTU = common dso_local global i32 0, align 4
@NETDEV_CHANGEMTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_set_mtu_ext(%struct.net_device* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %16
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %92

30:                                               ; preds = %19
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %43 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %92

46:                                               ; preds = %35, %30
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @netif_device_present(%struct.net_device* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %92

53:                                               ; preds = %46
  %54 = load i32, i32* @NETDEV_PRECHANGEMTU, align 4
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call i32 @call_netdevice_notifiers(i32 %54, %struct.net_device* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @notifier_to_errno(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %92

63:                                               ; preds = %53
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @__dev_set_mtu(%struct.net_device* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @NETDEV_CHANGEMTU, align 4
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @call_netdevice_notifiers_mtu(i32 %73, %struct.net_device* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @notifier_to_errno(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @__dev_set_mtu(%struct.net_device* %82, i32 %83)
  %85 = load i32, i32* @NETDEV_CHANGEMTU, align 4
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @call_netdevice_notifiers_mtu(i32 %85, %struct.net_device* %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %72
  br label %90

90:                                               ; preds = %89, %63
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %61, %50, %41, %25, %15
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @__dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @call_netdevice_notifiers_mtu(i32, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
