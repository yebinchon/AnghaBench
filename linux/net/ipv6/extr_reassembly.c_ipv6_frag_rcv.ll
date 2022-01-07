; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_reassembly.c_ipv6_frag_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_reassembly.c_ipv6_frag_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.frag_hdr = type { i32, i32 }
%struct.frag_queue = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ipv6hdr = type { i64 }
%struct.net = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }

@IP6SKB_FRAGMENTED = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMREQDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMOKS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@ICMPV6_HDR_FIELD = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_frag_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_frag_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.frag_hdr*, align 8
  %5 = alloca %struct.frag_queue*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %11)
  store %struct.ipv6hdr* %12, %struct.ipv6hdr** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @dev_net(i32 %16)
  store %struct.net* %17, %struct.net** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call %struct.TYPE_9__* @IP6CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IP6SKB_FRAGMENTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %158

26:                                               ; preds = %1
  %27 = load %struct.net*, %struct.net** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %28)
  %30 = call i32 @ip6_dst_idev(%struct.TYPE_6__* %29)
  %31 = load i32, i32* @IPSTATS_MIB_REASMREQDS, align 4
  %32 = call i32 @__IP6_INC_STATS(%struct.net* %27, i32 %30, i32 %31)
  %33 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %34 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %158

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i64 @skb_transport_offset(%struct.sk_buff* %40)
  %42 = add i64 %41, 8
  %43 = call i32 @pskb_may_pull(%struct.sk_buff* %39, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %158

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %47)
  store %struct.ipv6hdr* %48, %struct.ipv6hdr** %6, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i64 @skb_transport_header(%struct.sk_buff* %49)
  %51 = inttoptr i64 %50 to %struct.frag_hdr*
  store %struct.frag_hdr* %51, %struct.frag_hdr** %4, align 8
  %52 = load %struct.frag_hdr*, %struct.frag_hdr** %4, align 8
  %53 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @htons(i32 65529)
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %46
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 8
  %65 = load %struct.net*, %struct.net** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %66)
  %68 = call i32 @ip6_dst_idev(%struct.TYPE_6__* %67)
  %69 = load i32, i32* @IPSTATS_MIB_REASMOKS, align 4
  %70 = call i32 @__IP6_INC_STATS(%struct.net* %65, i32 %68, i32 %69)
  %71 = load %struct.frag_hdr*, %struct.frag_hdr** %4, align 8
  %72 = bitcast %struct.frag_hdr* %71 to i32*
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @skb_network_header(%struct.sk_buff* %73)
  %75 = sext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %79 = call %struct.TYPE_9__* @IP6CB(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32* %77, i32** %80, align 8
  %81 = load i32, i32* @IP6SKB_FRAGMENTED, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call %struct.TYPE_9__* @IP6CB(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 8
  store i32 1, i32* %2, align 4
  br label %171

87:                                               ; preds = %46
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = icmp ne %struct.TYPE_8__* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  br label %99

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %92
  %100 = phi i32 [ %97, %92 ], [ 0, %98 ]
  store i32 %100, i32* %8, align 4
  %101 = load %struct.net*, %struct.net** %7, align 8
  %102 = load %struct.frag_hdr*, %struct.frag_hdr** %4, align 8
  %103 = getelementptr inbounds %struct.frag_hdr, %struct.frag_hdr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call %struct.frag_queue* @fq_find(%struct.net* %101, i32 %104, %struct.ipv6hdr* %105, i32 %106)
  store %struct.frag_queue* %107, %struct.frag_queue** %5, align 8
  %108 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %109 = icmp ne %struct.frag_queue* %108, null
  br i1 %109, label %110, label %149

110:                                              ; preds = %99
  store i64 0, i64* %9, align 8
  %111 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %112 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = call i32 @spin_lock(i32* %113)
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %117 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %120 = load %struct.frag_hdr*, %struct.frag_hdr** %4, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = call %struct.TYPE_9__* @IP6CB(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @ip6_frag_queue(%struct.frag_queue* %118, %struct.sk_buff* %119, %struct.frag_hdr* %120, i32* %124, i64* %9)
  store i32 %125, i32* %10, align 4
  %126 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %127 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load %struct.frag_queue*, %struct.frag_queue** %5, align 8
  %131 = getelementptr inbounds %struct.frag_queue, %struct.frag_queue* %130, i32 0, i32 1
  %132 = call i32 @inet_frag_put(%struct.TYPE_7__* %131)
  %133 = load i64, i64* %9, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %110
  %136 = load %struct.net*, %struct.net** %7, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = call i32 @__in6_dev_get_safely(%struct.TYPE_8__* %139)
  %141 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %142 = call i32 @__IP6_INC_STATS(%struct.net* %136, i32 %140, i32 %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @icmpv6_param_prob(%struct.sk_buff* %143, i32 %144, i64 %145)
  br label %147

147:                                              ; preds = %135, %110
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %2, align 4
  br label %171

149:                                              ; preds = %99
  %150 = load %struct.net*, %struct.net** %7, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %152 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %151)
  %153 = call i32 @ip6_dst_idev(%struct.TYPE_6__* %152)
  %154 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %155 = call i32 @__IP6_INC_STATS(%struct.net* %150, i32 %153, i32 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %157 = call i32 @kfree_skb(%struct.sk_buff* %156)
  store i32 -1, i32* %2, align 4
  br label %171

158:                                              ; preds = %45, %37, %25
  %159 = load %struct.net*, %struct.net** %7, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = call i32 @__in6_dev_get_safely(%struct.TYPE_8__* %162)
  %164 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %165 = call i32 @__IP6_INC_STATS(%struct.net* %159, i32 %163, i32 %164)
  %166 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %167 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %169 = call i64 @skb_network_header_len(%struct.sk_buff* %168)
  %170 = call i32 @icmpv6_param_prob(%struct.sk_buff* %166, i32 %167, i64 %169)
  store i32 -1, i32* %2, align 4
  br label %171

171:                                              ; preds = %158, %149, %147, %58
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_6__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @__IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.TYPE_6__*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.frag_queue* @fq_find(%struct.net*, i32, %struct.ipv6hdr*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ip6_frag_queue(%struct.frag_queue*, %struct.sk_buff*, %struct.frag_hdr*, i32*, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inet_frag_put(%struct.TYPE_7__*) #1

declare dso_local i32 @__in6_dev_get_safely(%struct.TYPE_8__*) #1

declare dso_local i32 @icmpv6_param_prob(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header_len(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
