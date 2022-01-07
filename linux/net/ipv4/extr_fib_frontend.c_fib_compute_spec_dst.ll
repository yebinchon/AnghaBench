; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_fib_compute_spec_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_fib_compute_spec_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.in_device = type { i32 }
%struct.fib_result = type { i32 }
%struct.rtable = type { i32 }
%struct.net = type { i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_compute_spec_dst(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.fib_result, align 4
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.flowi4, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %15)
  store %struct.rtable* %16, %struct.rtable** %7, align 8
  %17 = load %struct.rtable*, %struct.rtable** %7, align 8
  %18 = getelementptr inbounds %struct.rtable, %struct.rtable* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTCF_BROADCAST, align 4
  %21 = load i32, i32* @RTCF_MULTICAST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RTCF_LOCAL, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = load i32, i32* @RTCF_LOCAL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %100

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %34)
  store %struct.in_device* %35, %struct.in_device** %5, align 8
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call %struct.net* @dev_net(%struct.net_device* %36)
  store %struct.net* %37, %struct.net** %8, align 8
  %38 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ipv4_is_zeronet(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %90, label %45

45:                                               ; preds = %33
  %46 = load %struct.in_device*, %struct.in_device** %5, align 8
  %47 = icmp ne %struct.in_device* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.in_device*, %struct.in_device** %5, align 8
  %50 = call i64 @IN_DEV_SRC_VMARK(%struct.in_device* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 0
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 1
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  br label %65

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 0, %64 ]
  store i32 %66, i32* %57, align 4
  %67 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 2
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @RT_TOS(i32 %71)
  store i32 %72, i32* %67, align 4
  %73 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 3
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %75 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %73, align 4
  %78 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @l3mdev_master_ifindex_rcu(%struct.net_device* %79)
  store i32 %80, i32* %78, align 4
  %81 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 5
  %82 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  store i32 %82, i32* %81, align 4
  %83 = load %struct.net*, %struct.net** %8, align 8
  %84 = call i32 @fib_lookup(%struct.net* %83, %struct.flowi4* %11, %struct.fib_result* %6, i32 0)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %65
  %87 = load %struct.net*, %struct.net** %8, align 8
  %88 = call i32 @fib_result_prefsrc(%struct.net* %87, %struct.fib_result* %6)
  store i32 %88, i32* %2, align 4
  br label %100

89:                                               ; preds = %65
  br label %92

90:                                               ; preds = %33
  %91 = load i32, i32* @RT_SCOPE_LINK, align 4
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @inet_select_addr(%struct.net_device* %93, i32 %97, i32 %98)
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %92, %86, %28
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @ipv4_is_zeronet(i32) #1

declare dso_local i64 @IN_DEV_SRC_VMARK(%struct.in_device*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @l3mdev_master_ifindex_rcu(%struct.net_device*) #1

declare dso_local i32 @fib_lookup(%struct.net*, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @fib_result_prefsrc(%struct.net*, %struct.fib_result*) #1

declare dso_local i32 @inet_select_addr(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
