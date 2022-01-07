; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6_offload.c_esp6_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6_offload.c_esp6_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_7__, %struct.crypto_aead*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.xfrm_offload = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.ip_esp_hdr = type { i32, i32 }
%struct.esp_info = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETIF_F_HW_ESP = common dso_local global i32 0, align 4
@CRYPTO_FALLBACK = common dso_local global i32 0, align 4
@XFRM_GSO_SEGMENT = common dso_local global i32 0, align 4
@IPV6_MAXPLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, i32)* @esp6_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp6_xmit(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrm_offload*, align 8
  %13 = alloca %struct.ip_esp_hdr*, align 8
  %14 = alloca %struct.crypto_aead*, align 8
  %15 = alloca %struct.esp_info, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %16, align 4
  %18 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %19)
  store %struct.xfrm_offload* %20, %struct.xfrm_offload** %12, align 8
  %21 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %22 = icmp ne %struct.xfrm_offload* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %206

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31, %26
  %41 = load i32, i32* @CRYPTO_FALLBACK, align 4
  %42 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %43 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %48 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 7
  store i32 %49, i32* %50, align 4
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 1
  %53 = load %struct.crypto_aead*, %struct.crypto_aead** %52, align 8
  store %struct.crypto_aead* %53, %struct.crypto_aead** %14, align 8
  %54 = load %struct.crypto_aead*, %struct.crypto_aead** %14, align 8
  %55 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %54)
  store i32 %55, i32* %10, align 4
  %56 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.crypto_aead*, %struct.crypto_aead** %14, align 8
  %58 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %57)
  %59 = call i8* @ALIGN(i32 %58, i32 4)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 2
  %65 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %64, %66
  %68 = load i32, i32* %11, align 4
  %69 = call i8* @ALIGN(i32 %67, i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %77, %79
  %81 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %83, %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 4
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %46
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i32 @skb_is_gso(%struct.sk_buff* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %95, %46
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i64 @esp6_output_head(%struct.xfrm_state* %100, %struct.sk_buff* %101, %struct.esp_info* %15)
  %103 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 5
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %206

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %95, %92
  %113 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %114 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %17, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = call %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff* %117)
  store %struct.ip_esp_hdr* %118, %struct.ip_esp_hdr** %13, align 8
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %120 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %13, align 8
  %124 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = call i32 @skb_network_offset(%struct.sk_buff* %126)
  %128 = sub nsw i32 0, %127
  %129 = call i32 @skb_push(%struct.sk_buff* %125, i32 %128)
  %130 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %131 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @XFRM_GSO_SEGMENT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %161

136:                                              ; preds = %112
  %137 = load i64, i64* %17, align 8
  %138 = call i32 @htonl(i64 %137)
  %139 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %13, align 8
  %140 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = call i32 @skb_is_gso(%struct.sk_buff* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %136
  %145 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %146 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  br label %160

150:                                              ; preds = %136
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %151)
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %156 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %154
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %150, %144
  br label %161

161:                                              ; preds = %160, %112
  %162 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %163 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.xfrm_offload*, %struct.xfrm_offload** %12, align 8
  %167 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = shl i32 %170, 32
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %165, %172
  %174 = call i32 @cpu_to_be64(i64 %173)
  %175 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %15, i32 0, i32 6
  store i32 %174, i32* %175, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = sub i64 %179, 4
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @IPV6_MAXPLEN, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %161
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %185, %161
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @htons(i32 %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %189)
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %206

195:                                              ; preds = %186
  %196 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = call i32 @esp6_output_tail(%struct.xfrm_state* %196, %struct.sk_buff* %197, %struct.esp_info* %15)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %4, align 4
  br label %206

203:                                              ; preds = %195
  %204 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %205 = call i32 @secpath_reset(%struct.sk_buff* %204)
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %203, %201, %194, %107, %23
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @esp6_output_head(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

declare dso_local %struct.ip_esp_hdr* @ip_esp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @esp6_output_tail(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

declare dso_local i32 @secpath_reset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
