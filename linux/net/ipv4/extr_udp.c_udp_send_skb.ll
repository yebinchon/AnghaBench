; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_send_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.sock* }
%struct.sock = type { i32, i64 }
%struct.flowi4 = type { i32, i32, i32 }
%struct.inet_cork = type { i32, i64 }
%struct.inet_sock = type { i32, i32 }
%struct.udphdr = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.flowi4*, %struct.inet_cork*)* @udp_send_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_send_skb(%struct.sk_buff* %0, %struct.flowi4* %1, %struct.inet_cork* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.flowi4*, align 8
  %7 = alloca %struct.inet_cork*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.flowi4* %1, %struct.flowi4** %6, align 8
  store %struct.inet_cork* %2, %struct.inet_cork** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 2
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %8, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call %struct.inet_sock* @inet_sk(%struct.sock* %21)
  store %struct.inet_sock* %22, %struct.inet_sock** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = call i32 @IS_UDPLITE(%struct.sock* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @skb_transport_offset(%struct.sk_buff* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 24
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %36)
  store %struct.udphdr* %37, %struct.udphdr** %10, align 8
  %38 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %39 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %42 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %44 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %47 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @htons(i32 %48)
  %50 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %51 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %53 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %55 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %149

58:                                               ; preds = %3
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @skb_network_header_len(%struct.sk_buff* %59)
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 24
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %66 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %64, %67
  %69 = sext i32 %68 to i64
  %70 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %71 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %241

79:                                               ; preds = %58
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %84 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @UDP_MAX_SEGMENTS, align 4
  %87 = mul nsw i32 %85, %86
  %88 = icmp sgt i32 %82, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %241

94:                                               ; preds = %79
  %95 = load %struct.sock*, %struct.sock** %8, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i32 @kfree_skb(%struct.sk_buff* %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %241

104:                                              ; preds = %94
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = call i32 @skb_dst(%struct.sk_buff* %114)
  %116 = call i64 @dst_xfrm(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113, %110, %104
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = call i32 @kfree_skb(%struct.sk_buff* %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %241

123:                                              ; preds = %113
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %126 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %123
  %130 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %131 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* @SKB_GSO_UDP_L4, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %137)
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %142 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @DIV_ROUND_UP(i32 %140, i32 %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %145)
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %129, %123
  br label %171

149:                                              ; preds = %3
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @udplite_csum(%struct.sk_buff* %153)
  store i32 %154, i32* %16, align 4
  br label %185

155:                                              ; preds = %149
  %156 = load %struct.sock*, %struct.sock** %8, align 8
  %157 = getelementptr inbounds %struct.sock, %struct.sock* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i64, i64* @CHECKSUM_NONE, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  br label %209

164:                                              ; preds = %155
  %165 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170, %148
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %174 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %177 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @udp4_hwcsum(%struct.sk_buff* %172, i32 %175, i32 %178)
  br label %209

180:                                              ; preds = %164
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = call i32 @udp_csum(%struct.sk_buff* %181)
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %152
  %186 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %187 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %190 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load %struct.sock*, %struct.sock** %8, align 8
  %194 = getelementptr inbounds %struct.sock, %struct.sock* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %16, align 4
  %197 = call i64 @csum_tcpudp_magic(i32 %188, i32 %191, i32 %192, i32 %195, i32 %196)
  %198 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %199 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %201 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %185
  %205 = load i64, i64* @CSUM_MANGLED_0, align 8
  %206 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %207 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %204, %185
  br label %209

209:                                              ; preds = %208, %171, %160
  %210 = load %struct.sock*, %struct.sock** %8, align 8
  %211 = call i32 @sock_net(%struct.sock* %210)
  %212 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %213 = call i32 @ip_send_skb(i32 %211, %struct.sk_buff* %212)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %209
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* @ENOBUFS, align 4
  %219 = sub nsw i32 0, %218
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %216
  %222 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %223 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %221
  %227 = load %struct.sock*, %struct.sock** %8, align 8
  %228 = call i32 @sock_net(%struct.sock* %227)
  %229 = load i32, i32* @UDP_MIB_SNDBUFERRORS, align 4
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @UDP_INC_STATS(i32 %228, i32 %229, i32 %230)
  store i32 0, i32* %11, align 4
  br label %232

232:                                              ; preds = %226, %221, %216
  br label %239

233:                                              ; preds = %209
  %234 = load %struct.sock*, %struct.sock** %8, align 8
  %235 = call i32 @sock_net(%struct.sock* %234)
  %236 = load i32, i32* @UDP_MIB_OUTDATAGRAMS, align 4
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @UDP_INC_STATS(i32 %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %233, %232
  %240 = load i32, i32* %11, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %239, %118, %99, %89, %74
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @dst_xfrm(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @udplite_csum(%struct.sk_buff*) #1

declare dso_local i32 @udp4_hwcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @udp_csum(%struct.sk_buff*) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_send_skb(i32, %struct.sk_buff*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @UDP_INC_STATS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
