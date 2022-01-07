; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_slave_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_failover.c_failover_slave_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32, i32 }
%struct.netdev_lag_upper_info = type { i32 }
%struct.failover_ops = type { i32 (%struct.net_device*, %struct.net_device*)*, i32, i64 (%struct.net_device*, %struct.net_device*)* }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"can not register failover rx handler (err = %d)\0A\00", align 1
@NETDEV_LAG_TX_TYPE_ACTIVEBACKUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"can not set failover device %s (err = %d)\0A\00", align 1
@IFF_FAILOVER_SLAVE = common dso_local global i32 0, align 4
@IFF_LIVE_RENAME_OK = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @failover_slave_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @failover_slave_register(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_lag_upper_info, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.failover_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ARPHRD_ETHER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %108

14:                                               ; preds = %1
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.net_device* @failover_get_bymac(i32 %18, %struct.failover_ops** %6)
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %108

23:                                               ; preds = %14
  %24 = load %struct.failover_ops*, %struct.failover_ops** %6, align 8
  %25 = icmp ne %struct.failover_ops* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.failover_ops*, %struct.failover_ops** %6, align 8
  %28 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %27, i32 0, i32 2
  %29 = load i64 (%struct.net_device*, %struct.net_device*)*, i64 (%struct.net_device*, %struct.net_device*)** %28, align 8
  %30 = icmp ne i64 (%struct.net_device*, %struct.net_device*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.failover_ops*, %struct.failover_ops** %6, align 8
  %33 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %32, i32 0, i32 2
  %34 = load i64 (%struct.net_device*, %struct.net_device*)*, i64 (%struct.net_device*, %struct.net_device*)** %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i64 %34(%struct.net_device* %35, %struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %108

40:                                               ; preds = %31, %26, %23
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load %struct.failover_ops*, %struct.failover_ops** %6, align 8
  %43 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @netdev_rx_handler_register(%struct.net_device* %41, i32 %44, %struct.net_device* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %108

53:                                               ; preds = %40
  %54 = load i32, i32* @NETDEV_LAG_TX_TYPE_ACTIVEBACKUP, align 4
  %55 = getelementptr inbounds %struct.netdev_lag_upper_info, %struct.netdev_lag_upper_info* %4, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @netdev_master_upper_dev_link(%struct.net_device* %56, %struct.net_device* %57, i32* null, %struct.netdev_lag_upper_info* %4, i32* null)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  br label %105

68:                                               ; preds = %53
  %69 = load i32, i32* @IFF_FAILOVER_SLAVE, align 4
  %70 = load i32, i32* @IFF_LIVE_RENAME_OK, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.failover_ops*, %struct.failover_ops** %6, align 8
  %77 = icmp ne %struct.failover_ops* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load %struct.failover_ops*, %struct.failover_ops** %6, align 8
  %80 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %79, i32 0, i32 0
  %81 = load i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)** %80, align 8
  %82 = icmp ne i32 (%struct.net_device*, %struct.net_device*)* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.failover_ops*, %struct.failover_ops** %6, align 8
  %85 = getelementptr inbounds %struct.failover_ops, %struct.failover_ops* %84, i32 0, i32 0
  %86 = load i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)** %85, align 8
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i32 %86(%struct.net_device* %87, %struct.net_device* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %92, i32* %2, align 4
  br label %110

93:                                               ; preds = %83, %78, %68
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %94, %struct.net_device* %95)
  %97 = load i32, i32* @IFF_FAILOVER_SLAVE, align 4
  %98 = load i32, i32* @IFF_LIVE_RENAME_OK, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %93, %61
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %106)
  br label %108

108:                                              ; preds = %105, %49, %39, %22, %13
  %109 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %108, %91
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_device* @failover_get_bymac(i32, %struct.failover_ops**) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @netdev_master_upper_dev_link(%struct.net_device*, %struct.net_device*, i32*, %struct.netdev_lag_upper_info*, i32*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
