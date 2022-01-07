; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPMSS.c_tcpmss_mangle_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPMSS.c_tcpmss_mangle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i64, %struct.xt_tcpmss_info* }
%struct.xt_tcpmss_info = type { i64 }
%struct.tcphdr = type { i32, i32 }
%struct.net = type { i32 }

@XT_TCPMSS_CLAMP_PMTU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"unknown or invalid path-MTU (%u)\0A\00", align 1
@TCPOLEN_MSS = common dso_local global i32 0, align 4
@TCPOPT_MSS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*, i32, i32, i32)* @tcpmss_mangle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpmss_mangle_packet(%struct.sk_buff* %0, %struct.xt_action_param* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.xt_action_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xt_tcpmss_info*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.net*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %25 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %24, i32 0, i32 1
  %26 = load %struct.xt_tcpmss_info*, %struct.xt_tcpmss_info** %25, align 8
  store %struct.xt_tcpmss_info* %26, %struct.xt_tcpmss_info** %12, align 8
  %27 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %28 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %292

32:                                               ; preds = %5
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @skb_ensure_writable(%struct.sk_buff* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 -1, i32* %6, align 4
  br label %292

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %292

49:                                               ; preds = %40
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i64 @skb_network_header(%struct.sk_buff* %50)
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = inttoptr i64 %54 to %struct.tcphdr*
  store %struct.tcphdr* %55, %struct.tcphdr** %13, align 8
  %56 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %57 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 8
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %49
  store i32 -1, i32* %6, align 4
  br label %292

68:                                               ; preds = %63
  %69 = load %struct.xt_tcpmss_info*, %struct.xt_tcpmss_info** %12, align 8
  %70 = getelementptr inbounds %struct.xt_tcpmss_info, %struct.xt_tcpmss_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @XT_TCPMSS_CLAMP_PMTU, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %68
  %75 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %76 = call %struct.net* @xt_net(%struct.xt_action_param* %75)
  store %struct.net* %76, %struct.net** %20, align 8
  %77 = load %struct.net*, %struct.net** %20, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @tcpmss_reverse_mtu(%struct.net* %77, %struct.sk_buff* %78, i32 %79)
  store i32 %80, i32* %21, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call i32 @skb_dst(%struct.sk_buff* %81)
  %83 = call i32 @dst_mtu(i32 %82)
  %84 = load i32, i32* %21, align 4
  %85 = call i8* @min(i32 %83, i32 %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ule i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @net_err_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i32 -1, i32* %6, align 4
  br label %292

93:                                               ; preds = %74
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub i32 %94, %95
  store i32 %96, i32* %18, align 4
  br label %102

97:                                               ; preds = %68
  %98 = load %struct.xt_tcpmss_info*, %struct.xt_tcpmss_info** %12, align 8
  %99 = getelementptr inbounds %struct.xt_tcpmss_info, %struct.xt_tcpmss_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %97, %93
  %103 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %104 = bitcast %struct.tcphdr* %103 to i32*
  store i32* %104, i32** %19, align 8
  store i32 8, i32* %16, align 4
  br label %105

105:                                              ; preds = %172, %102
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @TCPOLEN_MSS, align 4
  %109 = sub nsw i32 %107, %108
  %110 = icmp ule i32 %106, %109
  br i1 %110, label %111, label %180

111:                                              ; preds = %105
  %112 = load i32*, i32** %19, align 8
  %113 = load i32, i32* %16, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @TCPOPT_MSS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %171

119:                                              ; preds = %111
  %120 = load i32*, i32** %19, align 8
  %121 = load i32, i32* %16, align 4
  %122 = add i32 %121, 1
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @TCPOLEN_MSS, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %171

128:                                              ; preds = %119
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* %16, align 4
  %131 = add i32 %130, 2
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 8
  %136 = load i32*, i32** %19, align 8
  %137 = load i32, i32* %16, align 4
  %138 = add i32 %137, 3
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %135, %141
  store i32 %142, i32* %23, align 4
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %292

147:                                              ; preds = %128
  %148 = load i32, i32* %18, align 4
  %149 = and i32 %148, 65280
  %150 = ashr i32 %149, 8
  %151 = load i32*, i32** %19, align 8
  %152 = load i32, i32* %16, align 4
  %153 = add i32 %152, 2
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 %150, i32* %155, align 4
  %156 = load i32, i32* %18, align 4
  %157 = and i32 %156, 255
  %158 = load i32*, i32** %19, align 8
  %159 = load i32, i32* %16, align 4
  %160 = add i32 %159, 3
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %157, i32* %162, align 4
  %163 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %164 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %163, i32 0, i32 1
  %165 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %166 = load i32, i32* %23, align 4
  %167 = call i32 @htons(i32 %166)
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @htons(i32 %168)
  %170 = call i32 @inet_proto_csum_replace2(i32* %164, %struct.sk_buff* %165, i32 %167, i32 %169, i32 0)
  store i32 0, i32* %6, align 4
  br label %292

171:                                              ; preds = %119, %111
  br label %172

172:                                              ; preds = %171
  %173 = load i32*, i32** %19, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call i64 @optlen(i32* %173, i32 %174)
  %176 = load i32, i32* %16, align 4
  %177 = zext i32 %176 to i64
  %178 = add nsw i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %16, align 4
  br label %105

180:                                              ; preds = %105
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 0, i32* %6, align 4
  br label %292

185:                                              ; preds = %180
  %186 = load i32, i32* %15, align 4
  %187 = icmp sge i32 %186, 60
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 0, i32* %6, align 4
  br label %292

189:                                              ; preds = %185
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = call i32 @skb_tailroom(%struct.sk_buff* %190)
  %192 = load i32, i32* @TCPOLEN_MSS, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %189
  %195 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %196 = load i32, i32* @TCPOLEN_MSS, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %198 = call i32 @skb_tailroom(%struct.sk_buff* %197)
  %199 = sub nsw i32 %196, %198
  %200 = load i32, i32* @GFP_ATOMIC, align 4
  %201 = call i64 @pskb_expand_head(%struct.sk_buff* %195, i32 0, i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  store i32 -1, i32* %6, align 4
  br label %292

204:                                              ; preds = %194
  %205 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %206 = call i64 @skb_network_header(%struct.sk_buff* %205)
  %207 = load i32, i32* %10, align 4
  %208 = zext i32 %207 to i64
  %209 = add nsw i64 %206, %208
  %210 = inttoptr i64 %209 to %struct.tcphdr*
  store %struct.tcphdr* %210, %struct.tcphdr** %13, align 8
  br label %211

211:                                              ; preds = %204, %189
  %212 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %213 = load i32, i32* @TCPOLEN_MSS, align 4
  %214 = call i32 @skb_put(%struct.sk_buff* %212, i32 %213)
  %215 = load %struct.xt_action_param*, %struct.xt_action_param** %8, align 8
  %216 = call i64 @xt_family(%struct.xt_action_param* %215)
  %217 = load i64, i64* @NFPROTO_IPV4, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %211
  %220 = load i32, i32* %18, align 4
  %221 = call i8* @min(i32 %220, i32 536)
  %222 = ptrtoint i8* %221 to i32
  store i32 %222, i32* %18, align 4
  br label %227

223:                                              ; preds = %211
  %224 = load i32, i32* %18, align 4
  %225 = call i8* @min(i32 %224, i32 1220)
  %226 = ptrtoint i8* %225 to i32
  store i32 %226, i32* %18, align 4
  br label %227

227:                                              ; preds = %223, %219
  %228 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %229 = bitcast %struct.tcphdr* %228 to i32*
  %230 = getelementptr inbounds i32, i32* %229, i64 8
  store i32* %230, i32** %19, align 8
  %231 = load i32*, i32** %19, align 8
  %232 = load i32, i32* @TCPOLEN_MSS, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32*, i32** %19, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = sub i64 %237, 8
  %239 = trunc i64 %238 to i32
  %240 = call i32 @memmove(i32* %234, i32* %235, i32 %239)
  %241 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %242 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %241, i32 0, i32 1
  %243 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @htons(i32 %244)
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* @TCPOLEN_MSS, align 4
  %248 = add nsw i32 %246, %247
  %249 = call i32 @htons(i32 %248)
  %250 = call i32 @inet_proto_csum_replace2(i32* %242, %struct.sk_buff* %243, i32 %245, i32 %249, i32 1)
  %251 = load i32, i32* @TCPOPT_MSS, align 4
  %252 = load i32*, i32** %19, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @TCPOLEN_MSS, align 4
  %255 = load i32*, i32** %19, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* %18, align 4
  %258 = and i32 %257, 65280
  %259 = ashr i32 %258, 8
  %260 = load i32*, i32** %19, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %18, align 4
  %263 = and i32 %262, 255
  %264 = load i32*, i32** %19, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  store i32 %263, i32* %265, align 4
  %266 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %267 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %266, i32 0, i32 1
  %268 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %269 = load i32*, i32** %19, align 8
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @inet_proto_csum_replace4(i32* %267, %struct.sk_buff* %268, i32 0, i32 %270, i32 0)
  %272 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %273 = bitcast %struct.tcphdr* %272 to i32*
  %274 = getelementptr inbounds i32, i32* %273, i64 6
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %17, align 4
  %276 = load i32, i32* @TCPOLEN_MSS, align 4
  %277 = sdiv i32 %276, 4
  %278 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %279 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %283 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %282, i32 0, i32 1
  %284 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %285 = load i32, i32* %17, align 4
  %286 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %287 = bitcast %struct.tcphdr* %286 to i32*
  %288 = getelementptr inbounds i32, i32* %287, i64 6
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @inet_proto_csum_replace2(i32* %283, %struct.sk_buff* %284, i32 %285, i32 %289, i32 0)
  %291 = load i32, i32* @TCPOLEN_MSS, align 4
  store i32 %291, i32* %6, align 4
  br label %292

292:                                              ; preds = %227, %203, %188, %184, %147, %146, %90, %67, %48, %39, %31
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @tcpmss_reverse_mtu(%struct.net*, %struct.sk_buff*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @dst_mtu(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @net_err_ratelimited(i8*, i32) #1

declare dso_local i32 @inet_proto_csum_replace2(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @optlen(i32*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @inet_proto_csum_replace4(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
