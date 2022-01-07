; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_send_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.dst_entry = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.icmp6hdr = type { i32, i32 }
%struct.flowi6 = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@ICMP6_MIB_OUTMSGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.in6_addr*, %struct.in6_addr*)* @ndisc_send_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndisc_send_skb(%struct.sk_buff* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.icmp6hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.flowi6, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %16)
  store %struct.dst_entry* %17, %struct.dst_entry** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call %struct.net* @dev_net(%struct.TYPE_7__* %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = load %struct.net*, %struct.net** %8, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.sock*, %struct.sock** %24, align 8
  store %struct.sock* %25, %struct.sock** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %26)
  store %struct.icmp6hdr* %27, %struct.icmp6hdr** %12, align 8
  %28 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %29 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %32 = icmp ne %struct.dst_entry* %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  %39 = load %struct.sock*, %struct.sock** %9, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %42 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @icmpv6_flow_init(%struct.sock* %39, %struct.flowi6* %14, i32 %40, %struct.in6_addr* %41, %struct.in6_addr* %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call %struct.dst_entry* @icmp6_dst_alloc(%struct.TYPE_7__* %47, %struct.flowi6* %14)
  store %struct.dst_entry* %48, %struct.dst_entry** %7, align 8
  %49 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %50 = call i64 @IS_ERR(%struct.dst_entry* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %33
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  br label %120

55:                                               ; preds = %33
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %58 = call i32 @skb_dst_set(%struct.sk_buff* %56, %struct.dst_entry* %57)
  br label %59

59:                                               ; preds = %55, %3
  %60 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %61 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %66 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @csum_partial(%struct.icmp6hdr* %66, i32 %69, i32 0)
  %71 = call i32 @csum_ipv6_magic(%struct.in6_addr* %60, %struct.in6_addr* %61, i32 %64, i32 %65, i32 %70)
  %72 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %73 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %76 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %77 = load %struct.sock*, %struct.sock** %9, align 8
  %78 = call %struct.TYPE_6__* @inet6_sk(%struct.sock* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ip6_nd_hdr(%struct.sk_buff* %74, %struct.in6_addr* %75, %struct.in6_addr* %76, i32 %80, i32 %83)
  %85 = call i32 (...) @rcu_read_lock()
  %86 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %87 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.inet6_dev* @__in6_dev_get(i32 %88)
  store %struct.inet6_dev* %89, %struct.inet6_dev** %10, align 8
  %90 = load %struct.net*, %struct.net** %8, align 8
  %91 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %92 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @IP6_UPD_PO_STATS(%struct.net* %90, %struct.inet6_dev* %91, i32 %92, i32 %95)
  %97 = load i32, i32* @NFPROTO_IPV6, align 4
  %98 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %99 = load %struct.net*, %struct.net** %8, align 8
  %100 = load %struct.sock*, %struct.sock** %9, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %103 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @dst_output, align 4
  %106 = call i32 @NF_HOOK(i32 %97, i32 %98, %struct.net* %99, %struct.sock* %100, %struct.sk_buff* %101, i32* null, i32 %104, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %59
  %110 = load %struct.net*, %struct.net** %8, align 8
  %111 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @ICMP6MSGOUT_INC_STATS(%struct.net* %110, %struct.inet6_dev* %111, i32 %112)
  %114 = load %struct.net*, %struct.net** %8, align 8
  %115 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %116 = load i32, i32* @ICMP6_MIB_OUTMSGS, align 4
  %117 = call i32 @ICMP6_INC_STATS(%struct.net* %114, %struct.inet6_dev* %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %59
  %119 = call i32 (...) @rcu_read_unlock()
  br label %120

120:                                              ; preds = %118, %52
  ret void
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_7__*) #1

declare dso_local %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_flow_init(%struct.sock*, %struct.flowi6*, i32, %struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local %struct.dst_entry* @icmp6_dst_alloc(%struct.TYPE_7__*, %struct.flowi6*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @csum_ipv6_magic(%struct.in6_addr*, %struct.in6_addr*, i32, i32, i32) #1

declare dso_local i32 @csum_partial(%struct.icmp6hdr*, i32, i32) #1

declare dso_local i32 @ip6_nd_hdr(%struct.sk_buff*, %struct.in6_addr*, %struct.in6_addr*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, %struct.inet6_dev*, i32, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local i32 @ICMP6MSGOUT_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
