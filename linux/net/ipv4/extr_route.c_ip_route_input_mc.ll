; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_input_mc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_route_input_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.in_device = type { i32 }
%struct.rtable = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@NOPOLICY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ip_rt_bug = common dso_local global i32 0, align 4
@in_slow_mc = common dso_local global i32 0, align 4
@ip_mr_input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.net_device*, i32)* @ip_route_input_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_route_input_mc(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.net_device* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.in_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.net_device*, %struct.net_device** %12, align 8
  %20 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %19)
  store %struct.in_device* %20, %struct.in_device** %14, align 8
  %21 = load i32, i32* @RTCF_MULTICAST, align 4
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.net_device*, %struct.net_device** %12, align 8
  %27 = load %struct.in_device*, %struct.in_device** %14, align 8
  %28 = call i32 @ip_mc_validate_source(%struct.sk_buff* %22, i32 %23, i32 %24, i32 %25, %struct.net_device* %26, %struct.in_device* %27, i32* %17)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %7, align 4
  br label %69

33:                                               ; preds = %6
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @RTCF_LOCAL, align 4
  %38 = load i32, i32* %15, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.net_device*, %struct.net_device** %12, align 8
  %42 = call %struct.TYPE_4__* @dev_net(%struct.net_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @RTN_MULTICAST, align 4
  %47 = load %struct.in_device*, %struct.in_device** %14, align 8
  %48 = load i32, i32* @NOPOLICY, align 4
  %49 = call i32 @IN_DEV_CONF_GET(%struct.in_device* %47, i32 %48)
  %50 = call %struct.rtable* @rt_dst_alloc(i32 %44, i32 %45, i32 %46, i32 %49, i32 0, i32 0)
  store %struct.rtable* %50, %struct.rtable** %16, align 8
  %51 = load %struct.rtable*, %struct.rtable** %16, align 8
  %52 = icmp ne %struct.rtable* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %69

56:                                               ; preds = %40
  %57 = load i32, i32* @ip_rt_bug, align 4
  %58 = load %struct.rtable*, %struct.rtable** %16, align 8
  %59 = getelementptr inbounds %struct.rtable, %struct.rtable* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.rtable*, %struct.rtable** %16, align 8
  %62 = getelementptr inbounds %struct.rtable, %struct.rtable* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* @in_slow_mc, align 4
  %64 = call i32 @RT_CACHE_STAT_INC(i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load %struct.rtable*, %struct.rtable** %16, align 8
  %67 = getelementptr inbounds %struct.rtable, %struct.rtable* %66, i32 0, i32 1
  %68 = call i32 @skb_dst_set(%struct.sk_buff* %65, %struct.TYPE_3__* %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %56, %53, %31
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @ip_mc_validate_source(%struct.sk_buff*, i32, i32, i32, %struct.net_device*, %struct.in_device*, i32*) #1

declare dso_local %struct.rtable* @rt_dst_alloc(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @IN_DEV_CONF_GET(%struct.in_device*, i32) #1

declare dso_local i32 @RT_CACHE_STAT_INC(i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
