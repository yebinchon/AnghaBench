; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_ctl_send_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv6.c_dccp_v6_ctl_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32, i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sock* }
%struct.dst_entry = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@DCCP_MIB_OUTSEGS = common dso_local global i32 0, align 4
@DCCP_MIB_OUTRSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dccp_v6_ctl_send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_v6_ctl_send_reset(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.flowi6, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @dev_net(i32 %14)
  store %struct.net* %15, %struct.net** %8, align 8
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DCCP_PKT_RESET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %97

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @ipv6_unicast_destination(%struct.sk_buff* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %97

32:                                               ; preds = %27
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.sk_buff* @dccp_ctl_make_reset(%struct.sock* %33, %struct.sk_buff* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = icmp eq %struct.sk_buff* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %97

39:                                               ; preds = %32
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %40)
  store %struct.ipv6hdr* %41, %struct.ipv6hdr** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %44 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %43, i32 0, i32 1
  %45 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %46 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %45, i32 0, i32 0
  %47 = call i32 @dccp_v6_csum_finish(%struct.sk_buff* %42, i32* %44, i32* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 8
  %51 = call i32 @memset(%struct.flowi6* %7, i32 0, i32 24)
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %57 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @IPPROTO_DCCP, align 4
  %61 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @inet6_iif(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i32 @flowi6_to_flowi(%struct.flowi6* %7)
  %77 = call i32 @security_skb_classify_flow(%struct.sk_buff* %75, i32 %76)
  %78 = load %struct.sock*, %struct.sock** %9, align 8
  %79 = call %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock* %78, %struct.flowi6* %7, i32* null)
  store %struct.dst_entry* %79, %struct.dst_entry** %10, align 8
  %80 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %81 = call i32 @IS_ERR(%struct.dst_entry* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %39
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %86 = call i32 @skb_dst_set(%struct.sk_buff* %84, %struct.dst_entry* %85)
  %87 = load %struct.sock*, %struct.sock** %9, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 @ip6_xmit(%struct.sock* %87, %struct.sk_buff* %88, %struct.flowi6* %7, i32 0, i32* null, i32 0, i32 0)
  %90 = load i32, i32* @DCCP_MIB_OUTSEGS, align 4
  %91 = call i32 @DCCP_INC_STATS(i32 %90)
  %92 = load i32, i32* @DCCP_MIB_OUTRSTS, align 4
  %93 = call i32 @DCCP_INC_STATS(i32 %92)
  br label %97

94:                                               ; preds = %39
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %94, %83, %38, %31, %26
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_5__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_unicast_destination(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dccp_ctl_make_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v6_csum_finish(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @inet6_iif(%struct.sk_buff*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local %struct.dst_entry* @ip6_dst_lookup_flow(%struct.sock*, %struct.flowi6*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @ip6_xmit(%struct.sock*, %struct.sk_buff*, %struct.flowi6*, i32, i32*, i32, i32) #1

declare dso_local i32 @DCCP_INC_STATS(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
