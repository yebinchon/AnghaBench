; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_slave_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_slave_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.failover_ops = type { i32 (%struct.net_device*, %struct.net_device*)*, i64 (%struct.net_device*, %struct.net_device*)* }

@IFF_FAILOVER_SLAVE = common dso_local global i32 0, align 4
@IFF_LIVE_RENAME_OK = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @failover_slave_unregister(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.failover_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i32 @netif_is_failover_slave(%struct.net_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  %11 = call i32 (...) @ASSERT_RTNL()
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net_device* @failover_get_bymac(i32 %14, %struct.failover_ops** %5)
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %68

19:                                               ; preds = %10
  %20 = load %struct.failover_ops*, %struct.failover_ops** %5, align 8
  %21 = icmp ne %struct.failover_ops* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.failover_ops*, %struct.failover_ops** %5, align 8
  %24 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %23, i32 0, i32 1
  %25 = load i64 (%struct.net_device*, %struct.net_device*)*, i64 (%struct.net_device*, %struct.net_device*)** %24, align 8
  %26 = icmp ne i64 (%struct.net_device*, %struct.net_device*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.failover_ops*, %struct.failover_ops** %5, align 8
  %29 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %28, i32 0, i32 1
  %30 = load i64 (%struct.net_device*, %struct.net_device*)*, i64 (%struct.net_device*, %struct.net_device*)** %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i64 %30(%struct.net_device* %31, %struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %68

36:                                               ; preds = %27, %22, %19
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %39, %struct.net_device* %40)
  %42 = load i32, i32* @IFF_FAILOVER_SLAVE, align 4
  %43 = load i32, i32* @IFF_LIVE_RENAME_OK, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.failover_ops*, %struct.failover_ops** %5, align 8
  %51 = icmp ne %struct.failover_ops* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %36
  %53 = load %struct.failover_ops*, %struct.failover_ops** %5, align 8
  %54 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %53, i32 0, i32 0
  %55 = load i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)** %54, align 8
  %56 = icmp ne i32 (%struct.net_device*, %struct.net_device*)* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.failover_ops*, %struct.failover_ops** %5, align 8
  %59 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %58, i32 0, i32 0
  %60 = load i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 %60(%struct.net_device* %61, %struct.net_device* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %66, i32* %2, align 4
  br label %70

67:                                               ; preds = %57, %52, %36
  br label %68

68:                                               ; preds = %67, %35, %18, %9
  %69 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @netif_is_failover_slave(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_device* @failover_get_bymac(i32, %struct.failover_ops**) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
