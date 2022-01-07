; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_reuse_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_reuse_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32, i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@NET_SKB_PAD = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.napi_struct*, %struct.sk_buff*)* @napi_reuse_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @napi_reuse_skb(%struct.napi_struct* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @consume_skb(%struct.sk_buff* %11)
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_headlen(%struct.sk_buff* %15)
  %17 = call i32 @__skb_pull(%struct.sk_buff* %14, i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i64, i64* @NET_SKB_PAD, align 8
  %20 = load i64, i64* @NET_IP_ALIGN, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i64 @skb_headroom(%struct.sk_buff* %22)
  %24 = sub nsw i64 %21, %23
  %25 = call i32 @skb_reserve(%struct.sk_buff* %18, i64 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %26)
  %28 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %29 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @PACKET_HOST, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @skb_end_offset(%struct.sk_buff* %43)
  %45 = call i32 @SKB_TRUESIZE(i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @skb_ext_reset(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %52 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %51, i32 0, i32 0
  store %struct.sk_buff* %50, %struct.sk_buff** %52, align 8
  br label %53

53:                                               ; preds = %13, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @SKB_TRUESIZE(i32) #1

declare dso_local i32 @skb_end_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_ext_reset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
