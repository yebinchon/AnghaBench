; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp_output_set_esn.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp_output_set_esn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ip_esp_hdr = type { i32, i8* }
%struct.xfrm_offload = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_esp_hdr* (%struct.sk_buff*, %struct.xfrm_state*, %struct.ip_esp_hdr*, i32*)* @esp_output_set_esn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_esp_hdr* @esp_output_set_esn(%struct.sk_buff* %0, %struct.xfrm_state* %1, %struct.ip_esp_hdr* %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.ip_esp_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.xfrm_offload*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %6, align 8
  store %struct.ip_esp_hdr* %2, %struct.ip_esp_hdr** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @XFRM_STATE_ESN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %18)
  store %struct.xfrm_offload* %19, %struct.xfrm_offload** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @skb_transport_header(%struct.sk_buff* %20)
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 4
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %25, %struct.ip_esp_hdr** %7, align 8
  %26 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %31 = icmp ne %struct.xfrm_offload* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %17
  %33 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %34 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @htonl(i32 %36)
  %38 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %50

40:                                               ; preds = %17
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @htonl(i32 %46)
  %48 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %40, %32
  br label %51

51:                                               ; preds = %50, %4
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %53 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %57 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  ret %struct.ip_esp_hdr* %58
}

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
