; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output_set_extra.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output_set_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ip_esp_hdr = type { i32, i32 }
%struct.esp_output_extra = type { i8*, i32 }
%struct.xfrm_offload = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_esp_hdr* (%struct.sk_buff*, %struct.xfrm_state*, %struct.ip_esp_hdr*, %struct.esp_output_extra*)* @esp_output_set_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_esp_hdr* @esp_output_set_extra(%struct.sk_buff* %0, %struct.xfrm_state* %1, %struct.ip_esp_hdr* %2, %struct.esp_output_extra* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.ip_esp_hdr*, align 8
  %8 = alloca %struct.esp_output_extra*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_offload*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %6, align 8
  store %struct.ip_esp_hdr* %2, %struct.ip_esp_hdr** %7, align 8
  store %struct.esp_output_extra* %3, %struct.esp_output_extra** %8, align 8
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %12 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XFRM_STATE_ESN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %19)
  store %struct.xfrm_offload* %20, %struct.xfrm_offload** %10, align 8
  %21 = load %struct.xfrm_offload*, %struct.xfrm_offload** %10, align 8
  %22 = icmp ne %struct.xfrm_offload* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.xfrm_offload*, %struct.xfrm_offload** %10, align 8
  %25 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %37 = bitcast %struct.ip_esp_hdr* %36 to i8*
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @skb_transport_header(%struct.sk_buff* %38)
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load %struct.esp_output_extra*, %struct.esp_output_extra** %8, align 8
  %44 = getelementptr inbounds %struct.esp_output_extra, %struct.esp_output_extra* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %46 = bitcast %struct.ip_esp_hdr* %45 to i8*
  %47 = getelementptr inbounds i8, i8* %46, i64 -4
  %48 = bitcast i8* %47 to %struct.ip_esp_hdr*
  store %struct.ip_esp_hdr* %48, %struct.ip_esp_hdr** %7, align 8
  %49 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.esp_output_extra*, %struct.esp_output_extra** %8, align 8
  %53 = getelementptr inbounds %struct.esp_output_extra, %struct.esp_output_extra* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @htonl(i32 %54)
  %56 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %57 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %35, %4
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  ret %struct.ip_esp_hdr* %65
}

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_12__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
