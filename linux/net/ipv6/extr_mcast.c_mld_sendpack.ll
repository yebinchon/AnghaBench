; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_sendpack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_sendpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ipv6hdr = type { i32, i32, i32 }
%struct.mld2_report = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.flowi6 = type { i32 }
%struct.dst_entry = type { i32 }

@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@ICMPV6_MLD2_REPORT = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@ICMP6_MIB_OUTMSGS = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @mld_sendpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_sendpack(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca %struct.mld2_report*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flowi6, align 4
  %11 = alloca %struct.dst_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %12)
  store %struct.ipv6hdr* %13, %struct.ipv6hdr** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i32 @skb_transport_header(%struct.sk_buff* %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.mld2_report*
  store %struct.mld2_report* %17, %struct.mld2_report** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call %struct.net* @dev_net(%struct.TYPE_7__* %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call %struct.inet6_dev* @__in6_dev_get(%struct.TYPE_7__* %25)
  store %struct.inet6_dev* %26, %struct.inet6_dev** %7, align 8
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %29 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @IP6_UPD_PO_STATS(%struct.net* %27, %struct.inet6_dev* %28, i32 %29, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = call i32 @skb_tail_pointer(%struct.sk_buff* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %37 = call i32 @skb_network_header(%struct.sk_buff* %36)
  %38 = sub nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 12
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = call i32 @skb_tail_pointer(%struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = call i32 @skb_transport_header(%struct.sk_buff* %44)
  %46 = sub nsw i32 %43, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %50 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %52 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %51, i32 0, i32 1
  %53 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %54 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %58 = call i32 @skb_transport_header(%struct.sk_buff* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @csum_partial(i32 %58, i32 %59, i32 0)
  %61 = call i32 @csum_ipv6_magic(i32* %52, i32* %54, i32 %55, i32 %56, i32 %60)
  %62 = load %struct.mld2_report*, %struct.mld2_report** %4, align 8
  %63 = getelementptr inbounds %struct.mld2_report, %struct.mld2_report* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.net*, %struct.net** %8, align 8
  %65 = getelementptr inbounds %struct.net, %struct.net* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ICMPV6_MLD2_REPORT, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %70 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %70, i32 0, i32 1
  %72 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %73 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %73, i32 0, i32 0
  %75 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @icmpv6_flow_init(i32 %67, %struct.flowi6* %10, i32 %68, i32* %71, i32* %74, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = call %struct.dst_entry* @icmp6_dst_alloc(%struct.TYPE_7__* %83, %struct.flowi6* %10)
  store %struct.dst_entry* %84, %struct.dst_entry** %11, align 8
  store i32 0, i32* %9, align 4
  %85 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %86 = call i64 @IS_ERR(%struct.dst_entry* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %1
  %89 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %90 = call i32 @PTR_ERR(%struct.dst_entry* %89)
  store i32 %90, i32* %9, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %11, align 8
  br label %91

91:                                               ; preds = %88, %1
  %92 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %93 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %94 = call i32 @skb_dst_set(%struct.sk_buff* %92, %struct.dst_entry* %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %131

98:                                               ; preds = %91
  %99 = load i32, i32* @NFPROTO_IPV6, align 4
  %100 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %101 = load %struct.net*, %struct.net** %8, align 8
  %102 = load %struct.net*, %struct.net** %8, align 8
  %103 = getelementptr inbounds %struct.net, %struct.net* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* @dst_output, align 4
  %111 = call i32 @NF_HOOK(i32 %99, i32 %100, %struct.net* %101, i32 %105, %struct.sk_buff* %106, i32* null, %struct.TYPE_7__* %109, i32 %110)
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %131, %98
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = load %struct.net*, %struct.net** %8, align 8
  %117 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %118 = load i32, i32* @ICMPV6_MLD2_REPORT, align 4
  %119 = call i32 @ICMP6MSGOUT_INC_STATS(%struct.net* %116, %struct.inet6_dev* %117, i32 %118)
  %120 = load %struct.net*, %struct.net** %8, align 8
  %121 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %122 = load i32, i32* @ICMP6_MIB_OUTMSGS, align 4
  %123 = call i32 @ICMP6_INC_STATS(%struct.net* %120, %struct.inet6_dev* %121, i32 %122)
  br label %129

124:                                              ; preds = %112
  %125 = load %struct.net*, %struct.net** %8, align 8
  %126 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %127 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %128 = call i32 @IP6_INC_STATS(%struct.net* %125, %struct.inet6_dev* %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %115
  %130 = call i32 (...) @rcu_read_unlock()
  ret void

131:                                              ; preds = %97
  %132 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  br label %112
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_7__*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.TYPE_7__*) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, %struct.inet6_dev*, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @csum_ipv6_magic(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @csum_partial(i32, i32, i32) #1

declare dso_local i32 @icmpv6_flow_init(i32, %struct.flowi6*, i32, i32*, i32*, i32) #1

declare dso_local %struct.dst_entry* @icmp6_dst_alloc(%struct.TYPE_7__*, %struct.flowi6*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, i32, %struct.sk_buff*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ICMP6MSGOUT_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
