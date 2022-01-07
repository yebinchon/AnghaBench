; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4_offload.c_esp4_gso_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4_offload.c_esp4_gso_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.crypto_aead* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.crypto_aead = type { i32 }
%struct.ip_esp_hdr = type { i64 }
%struct.xfrm_offload = type { i32 }
%struct.sec_path = type { i32, %struct.xfrm_state** }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SKB_GSO_ESP = common dso_local global i32 0, align 4
@NETIF_F_HW_ESP = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@NETIF_F_HW_ESP_TX_CSUM = common dso_local global i32 0, align 4
@XFRM_GSO_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32)* @esp4_gso_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @esp4_gso_segment(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.ip_esp_hdr*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_offload*, align 8
  %11 = alloca %struct.sec_path*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %13)
  store %struct.xfrm_offload* %14, %struct.xfrm_offload** %10, align 8
  %15 = load %struct.xfrm_offload*, %struct.xfrm_offload** %10, align 8
  %16 = icmp ne %struct.xfrm_offload* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sk_buff* @ERR_PTR(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %3, align 8
  br label %141

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SKB_GSO_ESP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.sk_buff* @ERR_PTR(i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  br label %141

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %34)
  store %struct.sec_path* %35, %struct.sec_path** %11, align 8
  %36 = load %struct.sec_path*, %struct.sec_path** %11, align 8
  %37 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %36, i32 0, i32 1
  %38 = load %struct.xfrm_state**, %struct.xfrm_state*** %37, align 8
  %39 = load %struct.sec_path*, %struct.sec_path** %11, align 8
  %40 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %38, i64 %43
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %44, align 8
  store %struct.xfrm_state* %45, %struct.xfrm_state** %6, align 8
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 2
  %48 = load %struct.crypto_aead*, %struct.crypto_aead** %47, align 8
  store %struct.crypto_aead* %48, %struct.crypto_aead** %8, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff* %49)
  store %struct.ip_esp_hdr* %50, %struct.ip_esp_hdr** %7, align 8
  %51 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %7, align 8
  %52 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %33
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.sk_buff* @ERR_PTR(i32 %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %3, align 8
  br label %141

63:                                               ; preds = %33
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %66 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %65)
  %67 = add i64 8, %66
  %68 = call i32 @pskb_may_pull(%struct.sk_buff* %64, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.sk_buff* @ERR_PTR(i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %3, align 8
  br label %141

74:                                               ; preds = %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %77 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %76)
  %78 = add i64 8, %77
  %79 = call i32 @__skb_pull(%struct.sk_buff* %75, i64 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %74
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90, %74
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %97 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = icmp ne %struct.TYPE_7__* %99, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %95, %90
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @NETIF_F_SG, align 4
  %107 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = and i32 %105, %109
  store i32 %110, i32* %9, align 4
  br label %131

111:                                              ; preds = %95
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @NETIF_F_HW_ESP_TX_CSUM, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %111
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @NETIF_F_HW_ESP_TX_CSUM, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %125, %116, %111
  br label %131

131:                                              ; preds = %130, %104
  %132 = load i32, i32* @XFRM_GSO_SEGMENT, align 4
  %133 = load %struct.xfrm_offload*, %struct.xfrm_offload** %10, align 8
  %134 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call %struct.sk_buff* @xfrm4_outer_mode_gso_segment(%struct.xfrm_state* %137, %struct.sk_buff* %138, i32 %139)
  store %struct.sk_buff* %140, %struct.sk_buff** %3, align 8
  br label %141

141:                                              ; preds = %131, %70, %59, %29, %17
  %142 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %142
}

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @xfrm4_outer_mode_gso_segment(%struct.xfrm_state*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
