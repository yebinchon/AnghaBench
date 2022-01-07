; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ovs_key_tcp = type { i32, i32 }
%struct.tcphdr = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_key_tcp*, %struct.ovs_key_tcp*)* @set_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tcp(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.ovs_key_tcp* %2, %struct.ovs_key_tcp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_key_tcp*, align 8
  %9 = alloca %struct.ovs_key_tcp*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_key_tcp* %2, %struct.ovs_key_tcp** %8, align 8
  store %struct.ovs_key_tcp* %3, %struct.ovs_key_tcp** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i64 @skb_transport_offset(%struct.sk_buff* %15)
  %17 = add i64 %16, 24
  %18 = call i32 @skb_ensure_writable(%struct.sk_buff* %14, i64 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %91

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %25)
  store %struct.tcphdr* %26, %struct.tcphdr** %10, align 8
  %27 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %28 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %8, align 8
  %31 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %9, align 8
  %34 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @OVS_MASKED(i64 %29, i32 %32, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %39 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %24
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %51 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %50, i32 0, i32 2
  %52 = call i32 @set_tp_port(%struct.sk_buff* %46, i64* %48, i64 %49, i32* %51)
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %55 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %45, %24
  %58 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %59 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %8, align 8
  %62 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %9, align 8
  %65 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @OVS_MASKED(i64 %60, i32 %63, i32 %66)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %70 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %57
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %79 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %78, i32 0, i32 1
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %82 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %81, i32 0, i32 2
  %83 = call i32 @set_tp_port(%struct.sk_buff* %77, i64* %79, i64 %80, i32* %82)
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %86 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %76, %57
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call i32 @skb_clear_hash(%struct.sk_buff* %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %22
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @OVS_MASKED(i64, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @set_tp_port(%struct.sk_buff*, i64*, i64, i32*) #1

declare dso_local i32 @skb_clear_hash(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
