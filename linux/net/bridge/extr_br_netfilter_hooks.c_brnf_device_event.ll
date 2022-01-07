; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_brnf_device_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_brnf_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.brnf_net = type { i32 }
%struct.net = type { i32 }

@NETDEV_REGISTER = common dso_local global i64 0, align 8
@IFF_EBRIDGE = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@brnf_net_id = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@br_nf_ops = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @brnf_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brnf_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.brnf_net*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NETDEV_REGISTER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_EBRIDGE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17, %3
  %25 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %17
  %27 = call i32 (...) @ASSERT_RTNL()
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call %struct.net* @dev_net(%struct.net_device* %28)
  store %struct.net* %29, %struct.net** %10, align 8
  %30 = load %struct.net*, %struct.net** %10, align 8
  %31 = load i32, i32* @brnf_net_id, align 4
  %32 = call %struct.brnf_net* @net_generic(%struct.net* %30, i32 %31)
  store %struct.brnf_net* %32, %struct.brnf_net** %9, align 8
  %33 = load %struct.brnf_net*, %struct.brnf_net** %9, align 8
  %34 = getelementptr inbounds %struct.brnf_net, %struct.brnf_net* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %53

39:                                               ; preds = %26
  %40 = load %struct.net*, %struct.net** %10, align 8
  %41 = load i32, i32* @br_nf_ops, align 4
  %42 = load i32, i32* @br_nf_ops, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @nf_register_net_hooks(%struct.net* %40, i32 %41, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.brnf_net*, %struct.brnf_net** %9, align 8
  %51 = getelementptr inbounds %struct.brnf_net, %struct.brnf_net* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %47, %37, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.brnf_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nf_register_net_hooks(%struct.net*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
