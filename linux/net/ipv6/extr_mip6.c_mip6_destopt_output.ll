; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_destopt_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_destopt_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.ipv6_destopt_hdr = type { i32, i32 }
%struct.ipv6_destopt_hao = type { i32, i32, i32 }

@IPPROTO_DSTOPTS = common dso_local global i32 0, align 4
@IPV6_TLV_HAO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @mip6_destopt_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_destopt_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.ipv6_destopt_hdr*, align 8
  %7 = alloca %struct.ipv6_destopt_hao*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_network_offset(%struct.sk_buff* %11)
  %13 = sub nsw i32 0, %12
  %14 = call i32 @skb_push(%struct.sk_buff* %10, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %15)
  store %struct.ipv6hdr* %16, %struct.ipv6hdr** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32* @skb_mac_header(%struct.sk_buff* %17)
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @IPPROTO_DSTOPTS, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32* @skb_mac_header(%struct.sk_buff* %21)
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i64 @skb_transport_header(%struct.sk_buff* %23)
  %25 = inttoptr i64 %24 to %struct.ipv6_destopt_hdr*
  store %struct.ipv6_destopt_hdr* %25, %struct.ipv6_destopt_hdr** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ipv6_destopt_hdr*, %struct.ipv6_destopt_hdr** %6, align 8
  %28 = getelementptr inbounds %struct.ipv6_destopt_hdr, %struct.ipv6_destopt_hdr* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ipv6_destopt_hdr*, %struct.ipv6_destopt_hdr** %6, align 8
  %30 = getelementptr inbounds %struct.ipv6_destopt_hdr, %struct.ipv6_destopt_hdr* %29, i64 1
  %31 = bitcast %struct.ipv6_destopt_hdr* %30 to i8*
  %32 = call i32 @calc_padlen(i32 8, i32 6)
  %33 = call %struct.ipv6_destopt_hao* @mip6_padn(i8* %31, i32 %32)
  store %struct.ipv6_destopt_hao* %33, %struct.ipv6_destopt_hao** %7, align 8
  %34 = load i32, i32* @IPV6_TLV_HAO, align 4
  %35 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %7, align 8
  %36 = getelementptr inbounds %struct.ipv6_destopt_hao, %struct.ipv6_destopt_hao* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = call i32 @BUILD_BUG_ON(i32 1)
  %38 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %7, align 8
  %39 = getelementptr inbounds %struct.ipv6_destopt_hao, %struct.ipv6_destopt_hao* %38, i32 0, i32 0
  store i32 10, i32* %39, align 4
  %40 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %7, align 8
  %41 = bitcast %struct.ipv6_destopt_hao* %40 to i8*
  %42 = load %struct.ipv6_destopt_hdr*, %struct.ipv6_destopt_hdr** %6, align 8
  %43 = bitcast %struct.ipv6_destopt_hdr* %42 to i8*
  %44 = ptrtoint i8* %41 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = add i64 %46, 12
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %7, align 8
  %50 = getelementptr inbounds %struct.ipv6_destopt_hao, %struct.ipv6_destopt_hao* %49, i32 0, i32 1
  %51 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %52 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %51, i32 0, i32 0
  %53 = call i32 @memcpy(i32* %50, i32* %52, i32 4)
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %57, i32 0, i32 0
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @memcpy(i32* %58, i32* %61, i32 4)
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %64 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_bh(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %68 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %66, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %75 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 3
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.ipv6_destopt_hdr*, %struct.ipv6_destopt_hdr** %6, align 8
  %81 = getelementptr inbounds %struct.ipv6_destopt_hdr, %struct.ipv6_destopt_hdr* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  ret i32 0
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6_destopt_hao* @mip6_padn(i8*, i32) #1

declare dso_local i32 @calc_padlen(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
