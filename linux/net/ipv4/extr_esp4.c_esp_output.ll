; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_5__, i64, %struct.crypto_aead* }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ip_esp_hdr = type { i32, i32 }
%struct.esp_info = type { i32, i32, i32, i32, i32, i64, i32, %struct.ip_esp_hdr*, i32 }
%struct.xfrm_dst = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@IPPROTO_ESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
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
  %17 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 8
  store i32 %16, i32* %17, align 8
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
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 7
  store %struct.ip_esp_hdr* %98, %struct.ip_esp_hdr** %99, align 8
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i64 @esp_output_head(%struct.xfrm_state* %100, %struct.sk_buff* %101, %struct.esp_info* %10)
  %103 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 5
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %58
  %108 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %155

111:                                              ; preds = %58
  %112 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 7
  %113 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %112, align 8
  store %struct.ip_esp_hdr* %113, %struct.ip_esp_hdr** %8, align 8
  %114 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %115 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %8, align 8
  %119 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @htonl(i64 %125)
  %127 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %8, align 8
  %128 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff* %129)
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = call %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff* %135)
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = shl i32 %141, 32
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %134, %143
  %145 = call i32 @cpu_to_be64(i64 %144)
  %146 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %10, i32 0, i32 6
  store i32 %145, i32* %146, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = call i32 @skb_network_offset(%struct.sk_buff* %148)
  %150 = sub nsw i32 0, %149
  %151 = call i32 @skb_push(%struct.sk_buff* %147, i32 %150)
  %152 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @esp_output_tail(%struct.xfrm_state* %152, %struct.sk_buff* %153, %struct.esp_info* %10)
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %111, %107
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @xfrm_state_mtu(%struct.xfrm_state*, i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @esp_output_head(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local %struct.TYPE_8__* @XFRM_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @esp_output_tail(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
