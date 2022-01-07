; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_do_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_do_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.vlan_pcpu_stats = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_do_receive(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.vlan_pcpu_stats*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %10 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_vlan_tag_get_id(%struct.sk_buff* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 7
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.net_device* @vlan_find_dev(%struct.net_device* %19, i32 %20, i32 %21)
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %175

26:                                               ; preds = %1
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %27, i32 %28)
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %175

38:                                               ; preds = %26
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_UP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %52, align 8
  store i32 0, i32* %2, align 4
  br label %175

53:                                               ; preds = %38
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 7
  store %struct.net_device* %54, %struct.net_device** %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PACKET_OTHERHOST, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %53
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.net_device*, %struct.net_device** %7, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ether_addr_equal_64bits(i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i64, i64* @PACKET_HOST, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %65
  br label %80

80:                                               ; preds = %79, %53
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = call %struct.TYPE_3__* @vlan_dev_priv(%struct.net_device* %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %130, label %88

88:                                               ; preds = %80
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = call i32 @netif_is_macvlan_port(%struct.net_device* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %130, label %92

92:                                               ; preds = %88
  %93 = load %struct.net_device*, %struct.net_device** %7, align 8
  %94 = call i32 @netif_is_bridge_port(%struct.net_device* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %130, label %96

96:                                               ; preds = %92
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @skb_mac_header(%struct.sk_buff* %100)
  %102 = sub i32 %99, %101
  store i32 %102, i32* %9, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @skb_push(%struct.sk_buff* %103, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.sk_buff* @vlan_insert_inner_tag(%struct.sk_buff* %106, i32 %109, i32 %112, i32 %115)
  %117 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %116, %struct.sk_buff** %117, align 8
  store %struct.sk_buff* %116, %struct.sk_buff** %4, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = icmp ne %struct.sk_buff* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %175

121:                                              ; preds = %96
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* @VLAN_HLEN, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @skb_pull(%struct.sk_buff* %122, i64 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = call i32 @skb_reset_mac_len(%struct.sk_buff* %128)
  br label %130

130:                                              ; preds = %121, %92, %88, %80
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @vlan_get_ingress_priority(%struct.net_device* %131, i32 %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %138)
  %140 = load %struct.net_device*, %struct.net_device** %7, align 8
  %141 = call %struct.TYPE_3__* @vlan_dev_priv(%struct.net_device* %140)
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call %struct.vlan_pcpu_stats* @this_cpu_ptr(i32 %143)
  store %struct.vlan_pcpu_stats* %144, %struct.vlan_pcpu_stats** %8, align 8
  %145 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %8, align 8
  %146 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %145, i32 0, i32 0
  %147 = call i32 @u64_stats_update_begin(i32* %146)
  %148 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %8, align 8
  %149 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %8, align 8
  %156 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @PACKET_MULTICAST, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %130
  %167 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %8, align 8
  %168 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166, %130
  %172 = load %struct.vlan_pcpu_stats*, %struct.vlan_pcpu_stats** %8, align 8
  %173 = getelementptr inbounds %struct.vlan_pcpu_stats, %struct.vlan_pcpu_stats* %172, i32 0, i32 0
  %174 = call i32 @u64_stats_update_end(i32* %173)
  store i32 1, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %120, %49, %37, %25
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @skb_vlan_tag_get_id(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @vlan_find_dev(%struct.net_device*, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_is_macvlan_port(%struct.net_device*) #1

declare dso_local i32 @netif_is_bridge_port(%struct.net_device*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @vlan_insert_inner_tag(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i32 @vlan_get_ingress_priority(%struct.net_device*, i32) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

declare dso_local %struct.vlan_pcpu_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
