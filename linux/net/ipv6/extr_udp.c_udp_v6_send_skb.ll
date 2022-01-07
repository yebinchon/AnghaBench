; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udp_v6_send_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udp_v6_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32 }
%struct.inet_cork = type { i32, i64 }
%struct.udphdr = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UDP_MAX_SEGMENTS = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SKB_GSO_UDP_L4 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@UDP_MIB_SNDBUFERRORS = common dso_local global i32 0, align 4
@UDP_MIB_OUTDATAGRAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.flowi6*, %struct.inet_cork*)* @udp_v6_send_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_v6_send_skb(%struct.sk_buff* %0, %struct.flowi6* %1, %struct.inet_cork* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.flowi6*, align 8
  %7 = alloca %struct.inet_cork*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.flowi6* %1, %struct.flowi6** %6, align 8
  store %struct.inet_cork* %2, %struct.inet_cork** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 2
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call i32 @IS_UDPLITE(%struct.sock* %20)
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @skb_transport_offset(%struct.sk_buff* %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 24
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %33)
  store %struct.udphdr* %34, %struct.udphdr** %9, align 8
  %35 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %36 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %39 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %41 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %44 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @htons(i32 %45)
  %47 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %48 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %50 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %52 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %147

55:                                               ; preds = %3
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @skb_network_header_len(%struct.sk_buff* %56)
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 24
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %63 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %68 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %55
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %237

76:                                               ; preds = %55
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %81 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @UDP_MAX_SEGMENTS, align 4
  %84 = mul nsw i32 %82, %83
  %85 = icmp sgt i32 %79, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %237

91:                                               ; preds = %76
  %92 = load %struct.sock*, %struct.sock** %8, align 8
  %93 = call %struct.TYPE_4__* @udp_sk(%struct.sock* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i32 @kfree_skb(%struct.sk_buff* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %237

102:                                              ; preds = %91
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 @skb_dst(%struct.sk_buff* %112)
  %114 = call i64 @dst_xfrm(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111, %108, %102
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i32 @kfree_skb(%struct.sk_buff* %117)
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %237

121:                                              ; preds = %111
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %124 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %122, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %129 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %135)
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %140 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @DIV_ROUND_UP(i32 %138, i32 %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %143)
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  br label %146

146:                                              ; preds = %127, %121
  br label %170

147:                                              ; preds = %3
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call i32 @udplite_csum(%struct.sk_buff* %151)
  store i32 %152, i32* %12, align 4
  br label %184

153:                                              ; preds = %147
  %154 = load %struct.sock*, %struct.sock** %8, align 8
  %155 = call %struct.TYPE_4__* @udp_sk(%struct.sock* %154)
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i64, i64* @CHECKSUM_NONE, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  br label %206

163:                                              ; preds = %153
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169, %146
  %171 = load %struct.sock*, %struct.sock** %8, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %174 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %173, i32 0, i32 2
  %175 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %176 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %175, i32 0, i32 1
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @udp6_hwcsum_outgoing(%struct.sock* %171, %struct.sk_buff* %172, i32* %174, i32* %176, i32 %177)
  br label %206

179:                                              ; preds = %163
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = call i32 @udp_csum(%struct.sk_buff* %180)
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183, %150
  %185 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %186 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %185, i32 0, i32 2
  %187 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %188 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %187, i32 0, i32 1
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %191 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i64 @csum_ipv6_magic(i32* %186, i32* %188, i32 %189, i32 %192, i32 %193)
  %195 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %196 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %198 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %184
  %202 = load i64, i64* @CSUM_MANGLED_0, align 8
  %203 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %204 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %184
  br label %206

206:                                              ; preds = %205, %170, %159
  %207 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %208 = call i32 @ip6_send_skb(%struct.sk_buff* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %229

211:                                              ; preds = %206
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @ENOBUFS, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp eq i32 %212, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %211
  %217 = load %struct.sock*, %struct.sock** %8, align 8
  %218 = call %struct.TYPE_6__* @inet6_sk(%struct.sock* %217)
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %216
  %223 = load %struct.sock*, %struct.sock** %8, align 8
  %224 = call i32 @sock_net(%struct.sock* %223)
  %225 = load i32, i32* @UDP_MIB_SNDBUFERRORS, align 4
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @UDP6_INC_STATS(i32 %224, i32 %225, i32 %226)
  store i32 0, i32* %10, align 4
  br label %228

228:                                              ; preds = %222, %216, %211
  br label %235

229:                                              ; preds = %206
  %230 = load %struct.sock*, %struct.sock** %8, align 8
  %231 = call i32 @sock_net(%struct.sock* %230)
  %232 = load i32, i32* @UDP_MIB_OUTDATAGRAMS, align 4
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @UDP6_INC_STATS(i32 %231, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %229, %228
  %236 = load i32, i32* %10, align 4
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %235, %116, %97, %86, %71
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @udp_sk(%struct.sock*) #1

declare dso_local i64 @dst_xfrm(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @udplite_csum(%struct.sk_buff*) #1

declare dso_local i32 @udp6_hwcsum_outgoing(%struct.sock*, %struct.sk_buff*, i32*, i32*, i32) #1

declare dso_local i32 @udp_csum(%struct.sk_buff*) #1

declare dso_local i64 @csum_ipv6_magic(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ip6_send_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @UDP6_INC_STATS(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
