; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_dnat.c_ebt_dnat_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_dnat.c_ebt_dnat_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_nat_info* }
%struct.ebt_nat_info = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.net_device* }

@ETH_ALEN = common dso_local global i32 0, align 4
@EBT_DROP = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_dnat_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_dnat_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ebt_nat_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %9, align 8
  store %struct.ebt_nat_info* %10, %struct.ebt_nat_info** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = call i64 @skb_ensure_writable(%struct.sk_buff* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EBT_DROP, align 4
  store i32 %16, i32* %3, align 4
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.TYPE_5__* @eth_hdr(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %23 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ether_addr_copy(i32 %21, i32 %24)
  %26 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %27 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @is_multicast_ether_addr(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %17
  %32 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %33 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @is_broadcast_ether_addr(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @PACKET_BROADCAST, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %31
  %42 = load i32, i32* @PACKET_MULTICAST, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %86

46:                                               ; preds = %17
  %47 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %48 = call i32 @xt_hooknum(%struct.xt_action_param* %47)
  switch i32 %48, label %60 [
    i32 129, label %49
    i32 128, label %52
  ]

49:                                               ; preds = %46
  %50 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %51 = call %struct.net_device* @xt_in(%struct.xt_action_param* %50)
  store %struct.net_device* %51, %struct.net_device** %7, align 8
  br label %61

52:                                               ; preds = %46
  %53 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %54 = call %struct.net_device* @xt_in(%struct.xt_action_param* %53)
  %55 = call %struct.TYPE_6__* @br_port_get_rcu(%struct.net_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.net_device*, %struct.net_device** %58, align 8
  store %struct.net_device* %59, %struct.net_device** %7, align 8
  br label %61

60:                                               ; preds = %46
  store %struct.net_device* null, %struct.net_device** %7, align 8
  br label %61

61:                                               ; preds = %60, %52, %49
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = icmp ne %struct.net_device* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %66 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  br label %90

68:                                               ; preds = %61
  %69 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %70 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ether_addr_equal(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @PACKET_HOST, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %85

81:                                               ; preds = %68
  %82 = load i32, i32* @PACKET_OTHERHOST, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %45
  %87 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %88 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %64, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local %struct.TYPE_5__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

declare dso_local %struct.net_device* @xt_in(%struct.xt_action_param*) #1

declare dso_local %struct.TYPE_6__* @br_port_get_rcu(%struct.net_device*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
