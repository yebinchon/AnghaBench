; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_input_done2.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_input_done2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i64 }
%struct.xfrm_state = type { %struct.TYPE_7__, %struct.xfrm_encap_tmpl*, %struct.crypto_aead* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.xfrm_encap_tmpl = type { i64 }
%struct.crypto_aead = type { i32 }
%struct.xfrm_offload = type { i32 }
%struct.udphdr = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@CRYPTO_DONE = common dso_local global i32 0, align 4
@XFRM_MODE_TRANSPORT = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@IPPROTO_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_input_done2(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca %struct.xfrm_offload*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_encap_tmpl*, align 8
  %12 = alloca %struct.udphdr*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %14)
  store %struct.xfrm_state* %15, %struct.xfrm_state** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %16)
  store %struct.xfrm_offload* %17, %struct.xfrm_offload** %7, align 8
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 2
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %19, align 8
  store %struct.crypto_aead* %20, %struct.crypto_aead** %8, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %22 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %21)
  %23 = sext i32 %22 to i64
  %24 = add i64 4, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.xfrm_offload*, %struct.xfrm_offload** %7, align 8
  %27 = icmp ne %struct.xfrm_offload* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.xfrm_offload*, %struct.xfrm_offload** %7, align 8
  %30 = icmp ne %struct.xfrm_offload* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.xfrm_offload*, %struct.xfrm_offload** %7, align 8
  %33 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CRYPTO_DONE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call %struct.TYPE_9__* @ESP_SKB_CB(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kfree(i32 %42)
  br label %44

44:                                               ; preds = %38, %31, %28
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %145

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i32 @esp_remove_trailer(%struct.sk_buff* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %145

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %59)
  store %struct.iphdr* %60, %struct.iphdr** %5, align 8
  %61 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %62 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 1
  %67 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %66, align 8
  %68 = icmp ne %struct.xfrm_encap_tmpl* %67, null
  br i1 %68, label %69, label %119

69:                                               ; preds = %58
  %70 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %71 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %70, i32 0, i32 1
  %72 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %71, align 8
  store %struct.xfrm_encap_tmpl* %72, %struct.xfrm_encap_tmpl** %11, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i64 @skb_network_header(%struct.sk_buff* %73)
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = inttoptr i64 %77 to i8*
  %79 = bitcast i8* %78 to %struct.udphdr*
  store %struct.udphdr* %79, %struct.udphdr** %12, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %81 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %82, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %69
  %90 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %91 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.xfrm_encap_tmpl*, %struct.xfrm_encap_tmpl** %11, align 8
  %94 = getelementptr inbounds %struct.xfrm_encap_tmpl, %struct.xfrm_encap_tmpl* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %89, %69
  %98 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %99 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %103 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %104 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @km_new_mapping(%struct.xfrm_state* %102, %struct.TYPE_8__* %13, i64 %105)
  br label %107

107:                                              ; preds = %97, %89
  %108 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %109 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @XFRM_MODE_TRANSPORT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %107
  br label %119

119:                                              ; preds = %118, %58
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @skb_pull_rcsum(%struct.sk_buff* %120, i32 %121)
  %123 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %124 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %131 = call i32 @skb_reset_transport_header(%struct.sk_buff* %130)
  br label %137

132:                                              ; preds = %119
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 0, %134
  %136 = call i32 @skb_set_transport_header(%struct.sk_buff* %133, i32 %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @IPPROTO_NONE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %141, %137
  br label %145

145:                                              ; preds = %144, %57, %48
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.TYPE_9__* @ESP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @esp_remove_trailer(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @km_new_mapping(%struct.xfrm_state*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
