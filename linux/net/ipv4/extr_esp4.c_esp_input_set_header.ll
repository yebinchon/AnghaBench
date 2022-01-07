; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_input_set_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_input_set_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ip_esp_hdr = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*)* @esp_input_set_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_input_set_header(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.ip_esp_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %7)
  store %struct.xfrm_state* %8, %struct.xfrm_state** %5, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XFRM_STATE_ESN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call %struct.ip_esp_hdr* @skb_push(%struct.sk_buff* %17, i32 4)
  store %struct.ip_esp_hdr* %18, %struct.ip_esp_hdr** %6, align 8
  %19 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.ip_esp_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
