; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ovs_key_ipv4 = type { i32, i32, i32, i32 }
%struct.iphdr = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4*)* @set_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ipv4(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.ovs_key_ipv4* %2, %struct.ovs_key_ipv4* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_key_ipv4*, align 8
  %9 = alloca %struct.ovs_key_ipv4*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_key_ipv4* %2, %struct.ovs_key_ipv4** %8, align 8
  store %struct.ovs_key_ipv4* %3, %struct.ovs_key_ipv4** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i64 @skb_network_offset(%struct.sk_buff* %14)
  %16 = add i64 %15, 24
  %17 = call i32 @skb_ensure_writable(%struct.sk_buff* %13, i64 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %142

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %24)
  store %struct.iphdr* %25, %struct.iphdr** %10, align 8
  %26 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %27 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %23
  %31 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %8, align 8
  %35 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %38 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @OVS_MASKED(i64 %33, i32 %36, i32 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %30
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %52 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 0
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @set_ip_addr(%struct.sk_buff* %50, %struct.iphdr* %51, i64* %53, i64 %54)
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %58 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i64 %56, i64* %60, align 8
  br label %61

61:                                               ; preds = %49, %30
  br label %62

62:                                               ; preds = %61, %23
  %63 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %64 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %62
  %68 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %8, align 8
  %72 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %75 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @OVS_MASKED(i64 %70, i32 %73, i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %67
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %89 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %90 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %89, i32 0, i32 1
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @set_ip_addr(%struct.sk_buff* %87, %struct.iphdr* %88, i64* %90, i64 %91)
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %95 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i64 %93, i64* %97, align 8
  br label %98

98:                                               ; preds = %86, %67
  br label %99

99:                                               ; preds = %98, %62
  %100 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %101 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %106 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %107 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %8, align 8
  %111 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ipv4_change_dsfield(%struct.iphdr* %105, i32 %109, i32 %112)
  %114 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %118 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %104, %99
  %121 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %122 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %128 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %8, align 8
  %129 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %9, align 8
  %132 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @set_ip_ttl(%struct.sk_buff* %126, %struct.iphdr* %127, i32 %130, i32 %133)
  %135 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %139 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  br label %141

141:                                              ; preds = %125, %120
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %21
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @OVS_MASKED(i64, i32, i32) #1

declare dso_local i32 @set_ip_addr(%struct.sk_buff*, %struct.iphdr*, i64*, i64) #1

declare dso_local i32 @ipv4_change_dsfield(%struct.iphdr*, i32, i32) #1

declare dso_local i32 @set_ip_ttl(%struct.sk_buff*, %struct.iphdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
