; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_ctl_send_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_ctl_send_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.dst_entry = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@RTN_LOCAL = common dso_local global i64 0, align 8
@DCCP_MIB_OUTSEGS = common dso_local global i32 0, align 4
@DCCP_MIB_OUTRSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dccp_v4_ctl_send_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_v4_ctl_send_reset(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.TYPE_7__* @skb_dst(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net* @dev_net(i32 %14)
  store %struct.net* %15, %struct.net** %9, align 8
  %16 = load %struct.net*, %struct.net** %9, align 8
  %17 = getelementptr inbounds %struct.net, %struct.net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_8__* @dccp_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DCCP_PKT_RESET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %95

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call %struct.TYPE_6__* @skb_rtable(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RTN_LOCAL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %95

35:                                               ; preds = %27
  %36 = load %struct.net*, %struct.net** %9, align 8
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.dst_entry* @dccp_v4_route_skb(%struct.net* %36, %struct.sock* %37, %struct.sk_buff* %38)
  store %struct.dst_entry* %39, %struct.dst_entry** %8, align 8
  %40 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %41 = icmp eq %struct.dst_entry* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %95

43:                                               ; preds = %35
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call %struct.sk_buff* @dccp_ctl_make_reset(%struct.sock* %44, %struct.sk_buff* %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %7, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = icmp eq %struct.sk_buff* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %92

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %51)
  store %struct.iphdr* %52, %struct.iphdr** %6, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dccp_v4_csum_finish(%struct.sk_buff* %53, i32 %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call %struct.TYPE_8__* @dccp_hdr(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %66 = call i32 @dst_clone(%struct.dst_entry* %65)
  %67 = call i32 @skb_dst_set(%struct.sk_buff* %64, i32 %66)
  %68 = call i32 (...) @local_bh_disable()
  %69 = load %struct.sock*, %struct.sock** %10, align 8
  %70 = call i32 @bh_lock_sock(%struct.sock* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = load %struct.sock*, %struct.sock** %10, align 8
  %73 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %77 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ip_build_and_send_pkt(%struct.sk_buff* %71, %struct.sock* %72, i32 %75, i32 %78, i32* null)
  store i32 %79, i32* %5, align 4
  %80 = load %struct.sock*, %struct.sock** %10, align 8
  %81 = call i32 @bh_unlock_sock(%struct.sock* %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @net_xmit_eval(i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %50
  %86 = load i32, i32* @DCCP_MIB_OUTSEGS, align 4
  %87 = call i32 @__DCCP_INC_STATS(i32 %86)
  %88 = load i32, i32* @DCCP_MIB_OUTRSTS, align 4
  %89 = call i32 @__DCCP_INC_STATS(i32 %88)
  br label %90

90:                                               ; preds = %85, %50
  %91 = call i32 (...) @local_bh_enable()
  br label %92

92:                                               ; preds = %90, %49
  %93 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %94 = call i32 @dst_release(%struct.dst_entry* %93)
  br label %95

95:                                               ; preds = %92, %42, %34, %26
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.TYPE_7__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @dccp_v4_route_skb(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dccp_ctl_make_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_v4_csum_finish(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.dst_entry*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @ip_build_and_send_pkt(%struct.sk_buff*, %struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i64 @net_xmit_eval(i32) #1

declare dso_local i32 @__DCCP_INC_STATS(i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
