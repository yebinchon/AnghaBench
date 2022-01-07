; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_ovs_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_ovs_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.vport = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i64, i32, i32, i32, i32 }
%struct.sw_flow_key = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.dst_entry = type { %struct.TYPE_6__* }
%struct.nf_ipv6_ops = type { i32 (%struct.net.0*, i32, %struct.sk_buff*, i32)* }
%struct.net.0 = type opaque
%struct.rt6_info = type { %struct.dst_entry }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@MAX_L2_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"L2 header too long to fragment\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@ovs_dst_ops = common dso_local global i32 0, align 4
@DST_OBSOLETE_NONE = common dso_local global i32 0, align 4
@DST_NOCOUNT = common dso_local global i32 0, align 4
@ovs_vport_output = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed fragment ->%s: eth=%04x, MRU=%d, MTU=%d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.vport*, %struct.sk_buff*, i8*, %struct.sw_flow_key*)* @ovs_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovs_fragment(%struct.net* %0, %struct.vport* %1, %struct.sk_buff* %2, i8* %3, %struct.sw_flow_key* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.vport*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sw_flow_key*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dst_entry, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nf_ipv6_ops*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.rt6_info, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.vport* %1, %struct.vport** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sw_flow_key* %4, %struct.sw_flow_key** %10, align 8
  store i8* null, i8** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @eth_p_mpls(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call i64 @skb_network_offset(%struct.sk_buff* %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %22, %5
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call i64 @skb_network_offset(%struct.sk_buff* %32)
  %34 = load i64, i64* @MAX_L2_LEN, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @OVS_NLERR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %148

38:                                               ; preds = %31
  %39 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %40 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @ETH_P_IP, align 4
  %44 = call i64 @htons(i32 %43)
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %38
  %47 = load %struct.vport*, %struct.vport** %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %51 = call i32 @ovs_key_mac_proto(%struct.sw_flow_key* %50)
  %52 = call i32 @prepare_frag(%struct.vport* %47, %struct.sk_buff* %48, i8* %49, i32 %51)
  %53 = load i32, i32* @DST_OBSOLETE_NONE, align 4
  %54 = load i32, i32* @DST_NOCOUNT, align 4
  %55 = call i32 @dst_init(%struct.dst_entry* %12, i32* @ovs_dst_ops, i32* null, i32 1, i32 %53, i32 %54)
  %56 = load %struct.vport*, %struct.vport** %7, align 8
  %57 = getelementptr inbounds %struct.vport, %struct.vport* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %12, i32 0, i32 0
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %13, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = call i32 @skb_dst_set_noref(%struct.sk_buff* %63, %struct.dst_entry* %12)
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = call %struct.TYPE_7__* @IPCB(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.net*, %struct.net** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load i32, i32* @ovs_vport_output, align 4
  %75 = call i32 @ip_do_fragment(%struct.net* %69, i32 %72, %struct.sk_buff* %73, i32 %74)
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @refdst_drop(i64 %76)
  br label %147

78:                                               ; preds = %38
  %79 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %80 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @ETH_P_IPV6, align 4
  %84 = call i64 @htons(i32 %83)
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %131

86:                                               ; preds = %78
  %87 = call %struct.nf_ipv6_ops* (...) @nf_get_ipv6_ops()
  store %struct.nf_ipv6_ops* %87, %struct.nf_ipv6_ops** %14, align 8
  %88 = load %struct.nf_ipv6_ops*, %struct.nf_ipv6_ops** %14, align 8
  %89 = icmp ne %struct.nf_ipv6_ops* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %148

91:                                               ; preds = %86
  %92 = load %struct.vport*, %struct.vport** %7, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %96 = call i32 @ovs_key_mac_proto(%struct.sw_flow_key* %95)
  %97 = call i32 @prepare_frag(%struct.vport* %92, %struct.sk_buff* %93, i8* %94, i32 %96)
  %98 = call i32 @memset(%struct.rt6_info* %16, i32 0, i32 8)
  %99 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %16, i32 0, i32 0
  %100 = load i32, i32* @DST_OBSOLETE_NONE, align 4
  %101 = load i32, i32* @DST_NOCOUNT, align 4
  %102 = call i32 @dst_init(%struct.dst_entry* %99, i32* @ovs_dst_ops, i32* null, i32 1, i32 %100, i32 %101)
  %103 = load %struct.vport*, %struct.vport** %7, align 8
  %104 = getelementptr inbounds %struct.vport, %struct.vport* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %16, i32 0, i32 0
  %107 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %106, i32 0, i32 0
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %107, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %15, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %16, i32 0, i32 0
  %113 = call i32 @skb_dst_set_noref(%struct.sk_buff* %111, %struct.dst_entry* %112)
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = call %struct.TYPE_8__* @IP6CB(%struct.sk_buff* %115)
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  %118 = load %struct.nf_ipv6_ops*, %struct.nf_ipv6_ops** %14, align 8
  %119 = getelementptr inbounds %struct.nf_ipv6_ops, %struct.nf_ipv6_ops* %118, i32 0, i32 0
  %120 = load i32 (%struct.net.0*, i32, %struct.sk_buff*, i32)*, i32 (%struct.net.0*, i32, %struct.sk_buff*, i32)** %119, align 8
  %121 = load %struct.net*, %struct.net** %6, align 8
  %122 = bitcast %struct.net* %121 to %struct.net.0*
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = load i32, i32* @ovs_vport_output, align 4
  %128 = call i32 %120(%struct.net.0* %122, i32 %125, %struct.sk_buff* %126, i32 %127)
  %129 = load i64, i64* %15, align 8
  %130 = call i32 @refdst_drop(i64 %129)
  br label %146

131:                                              ; preds = %78
  %132 = load %struct.vport*, %struct.vport** %7, align 8
  %133 = call i32 @ovs_vport_name(%struct.vport* %132)
  %134 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %135 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @ntohs(i64 %137)
  %139 = load i8*, i8** %9, align 8
  %140 = load %struct.vport*, %struct.vport** %7, align 8
  %141 = getelementptr inbounds %struct.vport, %struct.vport* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %138, i8* %139, i32 %144)
  br label %148

146:                                              ; preds = %91
  br label %147

147:                                              ; preds = %146, %46
  br label %151

148:                                              ; preds = %131, %90, %36
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = call i32 @kfree_skb(%struct.sk_buff* %149)
  br label %151

151:                                              ; preds = %148, %147
  ret void
}

declare dso_local i64 @eth_p_mpls(i32) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @OVS_NLERR(i32, i8*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @prepare_frag(%struct.vport*, %struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @ovs_key_mac_proto(%struct.sw_flow_key*) #1

declare dso_local i32 @dst_init(%struct.dst_entry*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local %struct.TYPE_7__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @ip_do_fragment(%struct.net*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @refdst_drop(i64) #1

declare dso_local %struct.nf_ipv6_ops* @nf_get_ipv6_ops(...) #1

declare dso_local i32 @memset(%struct.rt6_info*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @ovs_vport_name(%struct.vport*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
