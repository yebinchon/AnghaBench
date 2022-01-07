; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_key_extract.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow.c_key_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.sw_flow_key = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ethhdr = type { i32, i32 }

@MAC_PROTO_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*)* @key_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_extract(%struct.sk_buff* %0, %struct.sw_flow_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %5, align 8
  %7 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %8 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @skb_reset_mac_header(%struct.sk_buff* %10)
  %12 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %13 = call i32 @clear_vlan(%struct.sw_flow_key* %12)
  %14 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %15 = call i64 @ovs_key_mac_proto(%struct.sw_flow_key* %14)
  %16 = load i64, i64* @MAC_PROTO_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @eth_type_vlan(i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %128

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @skb_reset_network_header(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %35 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  br label %122

37:                                               ; preds = %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %38)
  store %struct.ethhdr* %39, %struct.ethhdr** %6, align 8
  %40 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %41 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %45 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ether_addr_copy(i32 %43, i32 %46)
  %48 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %49 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %53 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ether_addr_copy(i32 %51, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = mul nsw i32 2, %57
  %59 = call i32 @__skb_pull(%struct.sk_buff* %56, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %62 = call i32 @parse_vlan(%struct.sk_buff* %60, %struct.sw_flow_key* %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %37
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %128

68:                                               ; preds = %37
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @parse_ethertype(%struct.sk_buff* %69)
  %71 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %72 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %75 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @htons(i32 0)
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %128

86:                                               ; preds = %68
  %87 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %88 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VLAN_CFI_MASK, align 4
  %93 = call i32 @htons(i32 %92)
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %98 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %111

104:                                              ; preds = %86
  %105 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %106 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %104, %96
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i32 @skb_reset_network_header(%struct.sk_buff* %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call i64 @skb_mac_header(%struct.sk_buff* %118)
  %120 = sub nsw i64 %117, %119
  %121 = call i32 @__skb_push(%struct.sk_buff* %114, i64 %120)
  br label %122

122:                                              ; preds = %111, %28
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = call i32 @skb_reset_mac_len(%struct.sk_buff* %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %127 = call i32 @key_extract_l3l4(%struct.sk_buff* %125, %struct.sw_flow_key* %126)
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %122, %83, %65, %25
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @clear_vlan(%struct.sw_flow_key*) #1

declare dso_local i64 @ovs_key_mac_proto(%struct.sw_flow_key*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eth_type_vlan(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @parse_vlan(%struct.sk_buff*, %struct.sw_flow_key*) #1

declare dso_local i32 @parse_ethertype(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i32 @key_extract_l3l4(%struct.sk_buff*, %struct.sw_flow_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
