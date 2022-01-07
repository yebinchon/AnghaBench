; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_get_dev_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_rt_get_dev_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fib6_result = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.TYPE_8__ = type { %struct.net_device* }

@RTF_LOCAL = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.fib6_result*)* @ip6_rt_get_dev_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @ip6_rt_get_dev_rcu(%struct.fib6_result* %0) #0 {
  %2 = alloca %struct.fib6_result*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.fib6_result* %0, %struct.fib6_result** %2, align 8
  %4 = load %struct.fib6_result*, %struct.fib6_result** %2, align 8
  %5 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %4, i32 0, i32 2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.fib6_result*, %struct.fib6_result** %2, align 8
  %10 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RTF_LOCAL, align 4
  %13 = load i32, i32* @RTF_ANYCAST, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @netif_is_l3_slave(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.fib6_result*, %struct.fib6_result** %2, align 8
  %23 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @rt6_need_strict(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call %struct.net_device* @l3mdev_master_dev_rcu(%struct.net_device* %30)
  store %struct.net_device* %31, %struct.net_device** %3, align 8
  br label %42

32:                                               ; preds = %21, %17
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netif_is_l3_master(%struct.net_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call %struct.TYPE_8__* @dev_net(%struct.net_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.net_device*, %struct.net_device** %39, align 8
  store %struct.net_device* %40, %struct.net_device** %3, align 8
  br label %41

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %44
}

declare dso_local i64 @netif_is_l3_slave(%struct.net_device*) #1

declare dso_local i32 @rt6_need_strict(i32*) #1

declare dso_local %struct.net_device* @l3mdev_master_dev_rcu(%struct.net_device*) #1

declare dso_local i32 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local %struct.TYPE_8__* @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
