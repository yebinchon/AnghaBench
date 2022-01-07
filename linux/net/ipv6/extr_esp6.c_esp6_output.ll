; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_5__, i64, %struct.crypto_aead* }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ip_esp_hdr = type { i32, i32 }
%struct.esp_info = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.xfrm_dst = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@IPPROTO_ESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp6_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp6_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_esp_hdr*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.esp_info, align 8
  %11 = alloca %struct.xfrm_dst*, align 8
  %12 = alloca i64, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32* @skb_mac_header(%struct.sk_buff* %14)
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 7
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @IPPROTO_ESP, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32* @skb_mac_header(%struct.sk_buff* %19)
  store i32 %18, i32* %20, align 4
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 2
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %22, align 8
  store %struct.crypto_aead* %23, %struct.crypto_aead** %9, align 8
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %25 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %24)
  store i32 %25, i32* %6, align 4
  %26 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i64 @skb_dst(%struct.sk_buff* %32)
  %34 = inttoptr i64 %33 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %34, %struct.xfrm_dst** %11, align 8
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %39 = load %struct.xfrm_dst*, %struct.xfrm_dst** %11, align 8
  %40 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @xfrm_state_mtu(%struct.xfrm_state* %38, i32 %41)
  %43 = call i64 @min(i64 %37, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %31
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %31
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %60 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %59)
  %61 = call i8* @ALIGN(i32 %60, i32 4)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 2
  %67 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %7, align 4
  %73 = call i8* @ALIGN(i32 %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %82, %85
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 3
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %90, %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %93, %94
  %96 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 4
  store i32 %95, i32* %96, align 8
  %97 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i64 @esp6_output_head(%struct.xfrm_state* %97, %struct.sk_buff* %98, %struct.esp_info* %10)
  %100 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 5
  store i64 %99, i64* %100, align 8
  %101 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %58
  %105 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %152

108:                                              ; preds = %58
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff* %109)
  store %struct.ip_esp_hdr* %110, %struct.ip_esp_hdr** %8, align 8
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %112 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %8, align 8
  %116 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @htonl(i64 %122)
  %124 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %8, align 8
  %125 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff* %126)
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = call %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = shl i32 %138, 32
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %131, %140
  %142 = call i32 @cpu_to_be64(i64 %141)
  %143 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 6
  store i32 %142, i32* %143, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = call i32 @skb_network_offset(%struct.sk_buff* %145)
  %147 = sub nsw i32 0, %146
  %148 = call i32 @skb_push(%struct.sk_buff* %144, i32 %147)
  %149 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = call i32 @esp6_output_tail(%struct.xfrm_state* %149, %struct.sk_buff* %150, %struct.esp_info* %10)
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %108, %104
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @xfrm_state_mtu(%struct.xfrm_state*, i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local i64 @esp6_output_head(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

declare dso_local %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @esp6_output_tail(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
