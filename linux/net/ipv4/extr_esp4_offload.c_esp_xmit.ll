; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4_offload.c_esp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4_offload.c_esp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__, %struct.crypto_aead*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32, %struct.TYPE_9__* }
%struct.xfrm_offload = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.ip_esp_hdr = type { i32, i32 }
%struct.esp_info = type { i32, i32, i32, i32, i32, i64, i32, %struct.ip_esp_hdr*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETIF_F_HW_ESP = common dso_local global i32 0, align 4
@CRYPTO_FALLBACK = common dso_local global i32 0, align 4
@XFRM_GSO_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, i32)* @esp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_xmit(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfrm_offload*, align 8
  %12 = alloca %struct.ip_esp_hdr*, align 8
  %13 = alloca %struct.crypto_aead*, align 8
  %14 = alloca %struct.esp_info, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %15, align 4
  %17 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %18)
  store %struct.xfrm_offload* %19, %struct.xfrm_offload** %11, align 8
  %20 = load %struct.xfrm_offload*, %struct.xfrm_offload** %11, align 8
  %21 = icmp ne %struct.xfrm_offload* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %208

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30, %25
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = icmp ne %struct.TYPE_9__* %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %39, %30
  %49 = load i32, i32* @CRYPTO_FALLBACK, align 4
  %50 = load %struct.xfrm_offload*, %struct.xfrm_offload** %11, align 8
  %51 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %48, %39
  %55 = load %struct.xfrm_offload*, %struct.xfrm_offload** %11, align 8
  %56 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 8
  store i32 %57, i32* %58, align 8
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 1
  %61 = load %struct.crypto_aead*, %struct.crypto_aead** %60, align 8
  store %struct.crypto_aead* %61, %struct.crypto_aead** %13, align 8
  %62 = load %struct.crypto_aead*, %struct.crypto_aead** %13, align 8
  %63 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %62)
  store i32 %63, i32* %9, align 4
  %64 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.crypto_aead*, %struct.crypto_aead** %13, align 8
  %66 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %65)
  %67 = call i8* @ALIGN(i32 %66, i32 4)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 2
  %73 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* %10, align 4
  %77 = call i8* @ALIGN(i32 %75, i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  %86 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %85, %87
  %89 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %91, %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %94, %95
  %97 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 4
  store i32 %96, i32* %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 7
  store %struct.ip_esp_hdr* %99, %struct.ip_esp_hdr** %100, align 8
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %54
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i32 @skb_is_gso(%struct.sk_buff* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %106, %54
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call i64 @esp_output_head(%struct.xfrm_state* %111, %struct.sk_buff* %112, %struct.esp_info* %14)
  %114 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 5
  store i64 %113, i64* %114, align 8
  %115 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %4, align 4
  br label %208

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %106, %103
  %124 = load %struct.xfrm_offload*, %struct.xfrm_offload** %11, align 8
  %125 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %16, align 8
  %128 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 7
  %129 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %128, align 8
  store %struct.ip_esp_hdr* %129, %struct.ip_esp_hdr** %12, align 8
  %130 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %131 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %12, align 8
  %135 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = call i32 @skb_network_offset(%struct.sk_buff* %137)
  %139 = sub nsw i32 0, %138
  %140 = call i32 @skb_push(%struct.sk_buff* %136, i32 %139)
  %141 = load %struct.xfrm_offload*, %struct.xfrm_offload** %11, align 8
  %142 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @XFRM_GSO_SEGMENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %123
  %148 = load i64, i64* %16, align 8
  %149 = call i32 @htonl(i64 %148)
  %150 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %12, align 8
  %151 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = call i32 @skb_is_gso(%struct.sk_buff* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %147
  %156 = load %struct.xfrm_offload*, %struct.xfrm_offload** %11, align 8
  %157 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  br label %171

161:                                              ; preds = %147
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %162)
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.xfrm_offload*, %struct.xfrm_offload** %11, align 8
  %167 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %165
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %161, %155
  br label %172

172:                                              ; preds = %171, %123
  %173 = load i64, i64* %16, align 8
  %174 = load %struct.xfrm_offload*, %struct.xfrm_offload** %11, align 8
  %175 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = shl i32 %178, 32
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %173, %180
  %182 = call i32 @cpu_to_be64(i64 %181)
  %183 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %14, i32 0, i32 6
  store i32 %182, i32* %183, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @htons(i32 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %189 = call %struct.TYPE_13__* @ip_hdr(%struct.sk_buff* %188)
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %192 = call %struct.TYPE_13__* @ip_hdr(%struct.sk_buff* %191)
  %193 = call i32 @ip_send_check(%struct.TYPE_13__* %192)
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %172
  store i32 0, i32* %4, align 4
  br label %208

197:                                              ; preds = %172
  %198 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %200 = call i32 @esp_output_tail(%struct.xfrm_state* %198, %struct.sk_buff* %199, %struct.esp_info* %14)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = load i32, i32* %8, align 4
  store i32 %204, i32* %4, align 4
  br label %208

205:                                              ; preds = %197
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = call i32 @secpath_reset(%struct.sk_buff* %206)
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %205, %203, %196, %118, %22
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @esp_output_head(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_13__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_send_check(%struct.TYPE_13__*) #1

declare dso_local i32 @esp_output_tail(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
