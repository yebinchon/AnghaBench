; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm4_remove_tunnel_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm4_remove_tunnel_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@XFRM_STATE_DECAP_DSCP = common dso_local global i32 0, align 4
@XFRM_STATE_NOECN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm4_remove_tunnel_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm4_remove_tunnel_encap(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.TYPE_6__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IPPROTO_IPIP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @pskb_may_pull(%struct.sk_buff* %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %71

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i32 @skb_unclone(%struct.sk_buff* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %71

27:                                               ; preds = %20
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @XFRM_STATE_DECAP_DSCP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.TYPE_6__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @ipip_hdr(%struct.sk_buff* %40)
  %42 = call i32 @ipv4_copy_dscp(i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %35, %27
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XFRM_STATE_NOECN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @ipip_ecn_decapsulate(%struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @skb_reset_network_header(%struct.sk_buff* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @skb_mac_header_rebuild(%struct.sk_buff* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call %struct.TYPE_5__* @eth_hdr(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %54
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %26, %19, %14
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_6__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv4_copy_dscp(i32, i32) #1

declare dso_local i32 @ipip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipip_ecn_decapsulate(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header_rebuild(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @eth_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
