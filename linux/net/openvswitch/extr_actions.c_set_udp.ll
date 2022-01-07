; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_udp.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.sw_flow_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ovs_key_udp = type { i32, i32 }
%struct.udphdr = type { i64, i64, i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_key_udp*, %struct.ovs_key_udp*)* @set_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_udp(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.ovs_key_udp* %2, %struct.ovs_key_udp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_key_udp*, align 8
  %9 = alloca %struct.ovs_key_udp*, align 8
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_key_udp* %2, %struct.ovs_key_udp** %8, align 8
  store %struct.ovs_key_udp* %3, %struct.ovs_key_udp** %9, align 8
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
  br label %131

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %25)
  store %struct.udphdr* %26, %struct.udphdr** %10, align 8
  %27 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %28 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %8, align 8
  %31 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %9, align 8
  %34 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @OVS_MASKED(i64 %29, i32 %32, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %38 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %8, align 8
  %41 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %9, align 8
  %44 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @OVS_MASKED(i64 %39, i32 %42, i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %48 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %113

51:                                               ; preds = %24
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %113

57:                                               ; preds = %51
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %60 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %69 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %68, i32 0, i32 0
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %72 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %71, i32 0, i32 2
  %73 = call i32 @set_tp_port(%struct.sk_buff* %67, i64* %69, i64 %70, i64* %72)
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %76 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %66, %57
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %81 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @likely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %78
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %90 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %89, i32 0, i32 1
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %93 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %92, i32 0, i32 2
  %94 = call i32 @set_tp_port(%struct.sk_buff* %88, i64* %90, i64 %91, i64* %93)
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %97 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  br label %99

99:                                               ; preds = %87, %78
  %100 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %101 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load i64, i64* @CSUM_MANGLED_0, align 8
  %110 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %111 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %99
  br label %128

113:                                              ; preds = %51, %24
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %116 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %119 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %122 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i64 %120, i64* %123, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %126 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  br label %128

128:                                              ; preds = %113, %112
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = call i32 @skb_clear_hash(%struct.sk_buff* %129)
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %22
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @skb_ensure_writable(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @OVS_MASKED(i64, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @set_tp_port(%struct.sk_buff*, i64*, i64, i64*) #1

declare dso_local i32 @skb_clear_hash(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
