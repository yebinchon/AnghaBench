; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_sync_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_sync_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arg_netdev_event = type { i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i8 }

@RTNH_F_DEAD = common dso_local global i8 0, align 1
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@fib6_ifup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt6_sync_up(%struct.net_device* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.arg_netdev_event, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %5, i32 0, i32 1
  %8 = bitcast %struct.TYPE_2__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 1, i1 false)
  %9 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %5, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  store %struct.net_device* %10, %struct.net_device** %9, align 8
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @RTNH_F_DEAD, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @netif_carrier_ok(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %23 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %21, %17, %2
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @dev_net(%struct.net_device* %27)
  %29 = load i32, i32* @fib6_ifup, align 4
  %30 = call i32 @fib6_clean_all(i32 %28, i32 %29, %struct.arg_netdev_event* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #2

declare dso_local i32 @fib6_clean_all(i32, i32, %struct.arg_netdev_event*) #2

declare dso_local i32 @dev_net(%struct.net_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
