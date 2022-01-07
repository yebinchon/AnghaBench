; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_l2_device_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_l2_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64, i32, i32 }
%struct.net = type { i32 }
%struct.tipc_bearer = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tipc_bearer*, i32*, i8*)* }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @tipc_l2_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_l2_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.tipc_bearer*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %8, align 8
  %14 = call %struct.net* @dev_net(%struct.net_device* %13)
  store %struct.net* %14, %struct.net** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tipc_bearer* @rtnl_dereference(i32 %17)
  store %struct.tipc_bearer* %18, %struct.tipc_bearer** %10, align 8
  %19 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %20 = icmp ne %struct.tipc_bearer* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %22, i32* %4, align 4
  br label %93

23:                                               ; preds = %3
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @trace_tipc_l2_device_event(%struct.net_device* %24, %struct.tipc_bearer* %25, i64 %26)
  %28 = load i64, i64* %6, align 8
  switch i64 %28, label %91 [
    i64 134, label %29
    i64 130, label %42
    i64 128, label %49
    i64 132, label %53
    i64 133, label %70
    i64 129, label %87
    i64 131, label %87
  ]

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = call i32 @netif_carrier_ok(%struct.net_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call i32 @netif_oper_up(%struct.net_device* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %39 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %38, i32 0, i32 3
  %40 = call i32 @test_and_set_bit_lock(i32 0, i32* %39)
  br label %91

41:                                               ; preds = %33, %29
  br label %42

42:                                               ; preds = %23, %41
  %43 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %44 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %43, i32 0, i32 3
  %45 = call i32 @clear_bit_unlock(i32 0, i32* %44)
  %46 = load %struct.net*, %struct.net** %9, align 8
  %47 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %48 = call i32 @tipc_reset_bearer(%struct.net* %46, %struct.tipc_bearer* %47)
  br label %91

49:                                               ; preds = %23
  %50 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %51 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %50, i32 0, i32 3
  %52 = call i32 @test_and_set_bit_lock(i32 0, i32* %51)
  br label %91

53:                                               ; preds = %23
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = call i32 @tipc_mtu_bad(%struct.net_device* %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.net*, %struct.net** %9, align 8
  %59 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %60 = call i32 @bearer_disable(%struct.net* %58, %struct.tipc_bearer* %59)
  br label %91

61:                                               ; preds = %53
  %62 = load %struct.net_device*, %struct.net_device** %8, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %66 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.net*, %struct.net** %9, align 8
  %68 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %69 = call i32 @tipc_reset_bearer(%struct.net* %67, %struct.tipc_bearer* %68)
  br label %91

70:                                               ; preds = %23
  %71 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %72 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.tipc_bearer*, i32*, i8*)*, i32 (%struct.tipc_bearer*, i32*, i8*)** %74, align 8
  %76 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %77 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %78 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %77, i32 0, i32 0
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 %75(%struct.tipc_bearer* %76, i32* %78, i8* %82)
  %84 = load %struct.net*, %struct.net** %9, align 8
  %85 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %86 = call i32 @tipc_reset_bearer(%struct.net* %84, %struct.tipc_bearer* %85)
  br label %91

87:                                               ; preds = %23, %23
  %88 = load %struct.net*, %struct.net** %9, align 8
  %89 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %90 = call i32 @bearer_disable(%struct.net* %88, %struct.tipc_bearer* %89)
  br label %91

91:                                               ; preds = %23, %87, %70, %61, %57, %49, %42, %37
  %92 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %21
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.tipc_bearer* @rtnl_dereference(i32) #1

declare dso_local i32 @trace_tipc_l2_device_event(%struct.net_device*, %struct.tipc_bearer*, i64) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_oper_up(%struct.net_device*) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @tipc_reset_bearer(%struct.net*, %struct.tipc_bearer*) #1

declare dso_local i32 @tipc_mtu_bad(%struct.net_device*, i32) #1

declare dso_local i32 @bearer_disable(%struct.net*, %struct.tipc_bearer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
