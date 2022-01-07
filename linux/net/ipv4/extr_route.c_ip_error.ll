; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ip_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.net_device* }
%struct.in_device = type { i32 }
%struct.inet_peer = type { i64, i64 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IPSTATS_MIB_INADDRERRORS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INNOROUTES = common dso_local global i32 0, align 4
@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@ICMP_NET_UNREACH = common dso_local global i32 0, align 4
@ICMP_PKT_FILTERED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ip_rt_error_burst = common dso_local global i64 0, align 8
@ip_rt_error_cost = common dso_local global i64 0, align 8
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_error(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rtable*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.inet_peer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %11)
  store %struct.rtable* %12, %struct.rtable** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = call i64 @netif_is_l3_master(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = call %struct.net* @dev_net(%struct.net_device* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = call %struct.TYPE_8__* @IPCB(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.net_device* @__dev_get_by_index(%struct.net* %25, i32 %29)
  store %struct.net_device* %30, %struct.net_device** %4, align 8
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  br label %144

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %36)
  store %struct.in_device* %37, %struct.in_device** %5, align 8
  %38 = load %struct.in_device*, %struct.in_device** %5, align 8
  %39 = icmp ne %struct.in_device* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %144

41:                                               ; preds = %35
  %42 = load %struct.rtable*, %struct.rtable** %3, align 8
  %43 = getelementptr inbounds %struct.rtable, %struct.rtable* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = call %struct.net* @dev_net(%struct.net_device* %45)
  store %struct.net* %46, %struct.net** %8, align 8
  %47 = load %struct.in_device*, %struct.in_device** %5, align 8
  %48 = call i32 @IN_DEV_FORWARD(%struct.in_device* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %41
  %51 = load %struct.rtable*, %struct.rtable** %3, align 8
  %52 = getelementptr inbounds %struct.rtable, %struct.rtable* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %63 [
    i32 130, label %55
    i32 128, label %59
  ]

55:                                               ; preds = %50
  %56 = load %struct.net*, %struct.net** %8, align 8
  %57 = load i32, i32* @IPSTATS_MIB_INADDRERRORS, align 4
  %58 = call i32 @__IP_INC_STATS(%struct.net* %56, i32 %57)
  br label %63

59:                                               ; preds = %50
  %60 = load %struct.net*, %struct.net** %8, align 8
  %61 = load i32, i32* @IPSTATS_MIB_INNOROUTES, align 4
  %62 = call i32 @__IP_INC_STATS(%struct.net* %60, i32 %61)
  br label %63

63:                                               ; preds = %50, %59, %55
  br label %144

64:                                               ; preds = %41
  %65 = load %struct.rtable*, %struct.rtable** %3, align 8
  %66 = getelementptr inbounds %struct.rtable, %struct.rtable* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %70 [
    i32 129, label %69
    i32 130, label %71
    i32 128, label %73
    i32 131, label %78
  ]

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %64, %69
  br label %144

71:                                               ; preds = %64
  %72 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  store i32 %72, i32* %10, align 4
  br label %80

73:                                               ; preds = %64
  %74 = load i32, i32* @ICMP_NET_UNREACH, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.net*, %struct.net** %8, align 8
  %76 = load i32, i32* @IPSTATS_MIB_INNOROUTES, align 4
  %77 = call i32 @__IP_INC_STATS(%struct.net* %75, i32 %76)
  br label %80

78:                                               ; preds = %64
  %79 = load i32, i32* @ICMP_PKT_FILTERED, align 4
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %78, %73, %71
  %81 = load %struct.net*, %struct.net** %8, align 8
  %82 = getelementptr inbounds %struct.net, %struct.net* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %86 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load %struct.net_device*, %struct.net_device** %90, align 8
  %92 = call i32 @l3mdev_master_ifindex(%struct.net_device* %91)
  %93 = call %struct.inet_peer* @inet_getpeer_v4(i32 %84, i32 %88, i32 %92, i32 1)
  store %struct.inet_peer* %93, %struct.inet_peer** %6, align 8
  store i32 1, i32* %9, align 4
  %94 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %95 = icmp ne %struct.inet_peer* %94, null
  br i1 %95, label %96, label %135

96:                                               ; preds = %80
  %97 = load i64, i64* @jiffies, align 8
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %100 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %98, %101
  %103 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %104 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %108 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ip_rt_error_burst, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %96
  %113 = load i64, i64* @ip_rt_error_burst, align 8
  %114 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %115 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %96
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %119 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %121 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ip_rt_error_cost, align 8
  %124 = icmp uge i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load i64, i64* @ip_rt_error_cost, align 8
  %127 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %128 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %129, %126
  store i64 %130, i64* %128, align 8
  br label %132

131:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %131, %125
  %133 = load %struct.inet_peer*, %struct.inet_peer** %6, align 8
  %134 = call i32 @inet_putpeer(%struct.inet_peer* %133)
  br label %135

135:                                              ; preds = %132, %80
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %140 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @icmp_send(%struct.sk_buff* %139, i32 %140, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %138, %135
  br label %144

144:                                              ; preds = %143, %70, %63, %40, %33
  %145 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %146 = call i32 @kfree_skb(%struct.sk_buff* %145)
  ret i32 0
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i64 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.TYPE_8__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @IN_DEV_FORWARD(%struct.in_device*) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.inet_peer* @inet_getpeer_v4(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @l3mdev_master_ifindex(%struct.net_device*) #1

declare dso_local i32 @inet_putpeer(%struct.inet_peer*) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
