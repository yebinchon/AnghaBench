; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_input_action_end_dx2.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_input_action_end_dx2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, %struct.net_device*, i64 }
%struct.net_device = type { i64, i32, i64 }
%struct.seg6_local_lwt = type { i32 }
%struct.net = type { i32 }
%struct.ethhdr = type { i32 }

@NEXTHDR_NONE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* @input_action_end_dx2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_action_end_dx2(%struct.sk_buff* %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  %12 = call %struct.net* @dev_net(%struct.net_device* %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* @NEXTHDR_NONE, align 4
  %15 = call i32 @decap_and_validate(%struct.sk_buff* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i64, i64* @ETH_HLEN, align 8
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %96

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @skb_reset_mac_header(%struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ethhdr*
  store %struct.ethhdr* %30, %struct.ethhdr** %8, align 8
  %31 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %32 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @eth_proto_is_802_3(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %96

37:                                               ; preds = %24
  %38 = load %struct.net*, %struct.net** %6, align 8
  %39 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %40 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %38, i32 %41)
  store %struct.net_device* %42, %struct.net_device** %7, align 8
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %96

46:                                               ; preds = %37
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ARPHRD_ETHER, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %96

53:                                               ; preds = %46
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IFF_UP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = call i32 @netif_carrier_ok(%struct.net_device* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60, %53
  br label %96

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @skb_orphan(%struct.sk_buff* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i64 @skb_warn_if_lro(%struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %96

72:                                               ; preds = %65
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @skb_forward_csum(%struct.sk_buff* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ETH_HLEN, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %96

85:                                               ; preds = %72
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  store %struct.net_device* %86, %struct.net_device** %88, align 8
  %89 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %90 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call i32 @dev_queue_xmit(%struct.sk_buff* %94)
  store i32 %95, i32* %3, align 4
  br label %101

96:                                               ; preds = %84, %71, %64, %52, %45, %36, %23, %17
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @kfree_skb(%struct.sk_buff* %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %85
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @decap_and_validate(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @eth_proto_is_802_3(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i64 @skb_warn_if_lro(%struct.sk_buff*) #1

declare dso_local i32 @skb_forward_csum(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
