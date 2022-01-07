; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_nat.c_tcf_nat_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_nat.c_tcf_nat_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_nat = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iphdr = type { i32, i32, i32, i64, i32, i32 }
%struct.tcphdr = type { i32 }
%struct.udphdr = type { i32 }
%struct.icmphdr = type { i32, i32 }

@TCA_NAT_FLAG_EGRESS = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_TIME_EXCEEDED = common dso_local global i32 0, align 4
@ICMP_PARAMETERPROB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_nat_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_nat_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_nat*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcphdr*, align 8
  %19 = alloca %struct.udphdr*, align 8
  %20 = alloca %struct.icmphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %21 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %22 = call %struct.tcf_nat* @to_tcf_nat(%struct.tc_action* %21)
  store %struct.tcf_nat* %22, %struct.tcf_nat** %8, align 8
  %23 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %24 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %23, i32 0, i32 5
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %27 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %26, i32 0, i32 8
  %28 = call i32 @tcf_lastuse_update(i32* %27)
  %29 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %30 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %33 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %36 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %39 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TCA_NAT_FLAG_EGRESS, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %14, align 4
  %43 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %44 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %47 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %46, i32 0, i32 7
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @bstats_update(i32* %47, %struct.sk_buff* %48)
  %50 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %51 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %50, i32 0, i32 5
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @TC_ACT_SHOT, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %3
  br label %393

60:                                               ; preds = %3
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @skb_network_offset(%struct.sk_buff* %61)
  store i32 %62, i32* %17, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 32, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @pskb_may_pull(%struct.sk_buff* %63, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  br label %393

71:                                               ; preds = %60
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %72)
  store %struct.iphdr* %73, %struct.iphdr** %9, align 8
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %78 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %13, align 4
  br label %84

80:                                               ; preds = %71
  %81 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %82 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %13, align 4
  %87 = xor i32 %85, %86
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %128, label %91

91:                                               ; preds = %84
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 32, %94
  %96 = trunc i64 %95 to i32
  %97 = call i64 @skb_try_make_writable(%struct.sk_buff* %92, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %393

100:                                              ; preds = %91
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %110)
  store %struct.iphdr* %111, %struct.iphdr** %9, align 8
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %100
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %117 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %122

118:                                              ; preds = %100
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %121 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i32 0, i32 5
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @csum_replace4(i32* %124, i32 %125, i32 %126)
  br label %143

128:                                              ; preds = %84
  %129 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %130 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IP_OFFSET, align 4
  %133 = call i32 @htons(i32 %132)
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %128
  %137 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %138 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 130
  br i1 %140, label %141, label %142

141:                                              ; preds = %136, %128
  br label %391

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %122
  %144 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %146, 4
  store i32 %147, i32* %16, align 4
  %148 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %149 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IP_OFFSET, align 4
  %152 = call i32 @htons(i32 %151)
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  br label %160

156:                                              ; preds = %143
  %157 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  br label %160

160:                                              ; preds = %156, %155
  %161 = phi i64 [ 0, %155 ], [ %159, %156 ]
  switch i64 %161, label %389 [
    i64 129, label %162
    i64 128, label %199
    i64 130, label %257
  ]

162:                                              ; preds = %160
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = add i64 %165, 4
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %166, %168
  %170 = trunc i64 %169 to i32
  %171 = call i32 @pskb_may_pull(%struct.sk_buff* %163, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %162
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %176, 4
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = add i64 %177, %179
  %181 = trunc i64 %180 to i32
  %182 = call i64 @skb_try_make_writable(%struct.sk_buff* %174, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %173, %162
  br label %393

185:                                              ; preds = %173
  %186 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %187 = call i32 @skb_network_header(%struct.sk_buff* %186)
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = bitcast i8* %191 to %struct.tcphdr*
  store %struct.tcphdr* %192, %struct.tcphdr** %18, align 8
  %193 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %194 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %193, i32 0, i32 0
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @inet_proto_csum_replace4(i32* %194, %struct.sk_buff* %195, i32 %196, i32 %197, i32 1)
  br label %390

199:                                              ; preds = %160
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %201 = load i32, i32* %16, align 4
  %202 = sext i32 %201 to i64
  %203 = add i64 %202, 4
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = add i64 %203, %205
  %207 = trunc i64 %206 to i32
  %208 = call i32 @pskb_may_pull(%struct.sk_buff* %200, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %199
  %211 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = add i64 %213, 4
  %215 = load i32, i32* %17, align 4
  %216 = sext i32 %215 to i64
  %217 = add i64 %214, %216
  %218 = trunc i64 %217 to i32
  %219 = call i64 @skb_try_make_writable(%struct.sk_buff* %211, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %210, %199
  br label %393

222:                                              ; preds = %210
  %223 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %224 = call i32 @skb_network_header(%struct.sk_buff* %223)
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = bitcast i8* %228 to %struct.udphdr*
  store %struct.udphdr* %229, %struct.udphdr** %19, align 8
  %230 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %231 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %222
  %235 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %234, %222
  %241 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %242 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %241, i32 0, i32 0
  %243 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @inet_proto_csum_replace4(i32* %242, %struct.sk_buff* %243, i32 %244, i32 %245, i32 1)
  %247 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %248 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %240
  %252 = load i32, i32* @CSUM_MANGLED_0, align 4
  %253 = load %struct.udphdr*, %struct.udphdr** %19, align 8
  %254 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 4
  br label %255

255:                                              ; preds = %251, %240
  br label %256

256:                                              ; preds = %255, %234
  br label %390

257:                                              ; preds = %160
  %258 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %259 = load i32, i32* %16, align 4
  %260 = sext i32 %259 to i64
  %261 = add i64 %260, 8
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = add i64 %261, %263
  %265 = trunc i64 %264 to i32
  %266 = call i32 @pskb_may_pull(%struct.sk_buff* %258, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %257
  br label %393

269:                                              ; preds = %257
  %270 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %271 = call i32 @skb_network_header(%struct.sk_buff* %270)
  %272 = load i32, i32* %16, align 4
  %273 = add nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = inttoptr i64 %274 to i8*
  %276 = bitcast i8* %275 to %struct.icmphdr*
  store %struct.icmphdr* %276, %struct.icmphdr** %20, align 8
  %277 = load %struct.icmphdr*, %struct.icmphdr** %20, align 8
  %278 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %295

282:                                              ; preds = %269
  %283 = load %struct.icmphdr*, %struct.icmphdr** %20, align 8
  %284 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @ICMP_TIME_EXCEEDED, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %282
  %289 = load %struct.icmphdr*, %struct.icmphdr** %20, align 8
  %290 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @ICMP_PARAMETERPROB, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %288
  br label %390

295:                                              ; preds = %288, %282, %269
  %296 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %297 = load i32, i32* %16, align 4
  %298 = sext i32 %297 to i64
  %299 = add i64 %298, 8
  %300 = add i64 %299, 32
  %301 = load i32, i32* %17, align 4
  %302 = sext i32 %301 to i64
  %303 = add i64 %300, %302
  %304 = trunc i64 %303 to i32
  %305 = call i32 @pskb_may_pull(%struct.sk_buff* %296, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %295
  br label %393

308:                                              ; preds = %295
  %309 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %310 = call i32 @skb_network_header(%struct.sk_buff* %309)
  %311 = load i32, i32* %16, align 4
  %312 = add nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to i8*
  %315 = bitcast i8* %314 to %struct.icmphdr*
  store %struct.icmphdr* %315, %struct.icmphdr** %20, align 8
  %316 = load %struct.icmphdr*, %struct.icmphdr** %20, align 8
  %317 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %316, i64 1
  %318 = bitcast %struct.icmphdr* %317 to i8*
  %319 = bitcast i8* %318 to %struct.iphdr*
  store %struct.iphdr* %319, %struct.iphdr** %9, align 8
  %320 = load i32, i32* %14, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %308
  %323 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %324 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %13, align 4
  br label %330

326:                                              ; preds = %308
  %327 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %328 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  store i32 %329, i32* %13, align 4
  br label %330

330:                                              ; preds = %326, %322
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* %13, align 4
  %333 = xor i32 %331, %332
  %334 = load i32, i32* %12, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %330
  br label %390

338:                                              ; preds = %330
  %339 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %340 = load i32, i32* %16, align 4
  %341 = sext i32 %340 to i64
  %342 = add i64 %341, 8
  %343 = add i64 %342, 32
  %344 = load i32, i32* %17, align 4
  %345 = sext i32 %344 to i64
  %346 = add i64 %343, %345
  %347 = trunc i64 %346 to i32
  %348 = call i64 @skb_try_make_writable(%struct.sk_buff* %339, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %338
  br label %393

351:                                              ; preds = %338
  %352 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %353 = call i32 @skb_network_header(%struct.sk_buff* %352)
  %354 = load i32, i32* %16, align 4
  %355 = add nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = inttoptr i64 %356 to i8*
  %358 = bitcast i8* %357 to %struct.icmphdr*
  store %struct.icmphdr* %358, %struct.icmphdr** %20, align 8
  %359 = load %struct.icmphdr*, %struct.icmphdr** %20, align 8
  %360 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %359, i64 1
  %361 = bitcast %struct.icmphdr* %360 to i8*
  %362 = bitcast i8* %361 to %struct.iphdr*
  store %struct.iphdr* %362, %struct.iphdr** %9, align 8
  %363 = load i32, i32* %12, align 4
  %364 = load i32, i32* %11, align 4
  %365 = and i32 %364, %363
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %13, align 4
  %367 = load i32, i32* %12, align 4
  %368 = xor i32 %367, -1
  %369 = and i32 %366, %368
  %370 = load i32, i32* %11, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %11, align 4
  %372 = load i32, i32* %14, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %351
  %375 = load i32, i32* %11, align 4
  %376 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %377 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 4
  br label %382

378:                                              ; preds = %351
  %379 = load i32, i32* %11, align 4
  %380 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %381 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %380, i32 0, i32 0
  store i32 %379, i32* %381, align 8
  br label %382

382:                                              ; preds = %378, %374
  %383 = load %struct.icmphdr*, %struct.icmphdr** %20, align 8
  %384 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %383, i32 0, i32 0
  %385 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %386 = load i32, i32* %13, align 4
  %387 = load i32, i32* %11, align 4
  %388 = call i32 @inet_proto_csum_replace4(i32* %384, %struct.sk_buff* %385, i32 %386, i32 %387, i32 0)
  br label %390

389:                                              ; preds = %160
  br label %390

390:                                              ; preds = %389, %382, %337, %294, %256, %185
  br label %391

391:                                              ; preds = %390, %141
  %392 = load i32, i32* %15, align 4
  store i32 %392, i32* %4, align 4
  br label %406

393:                                              ; preds = %350, %307, %268, %221, %184, %99, %70, %59
  %394 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %395 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %394, i32 0, i32 5
  %396 = call i32 @spin_lock(i32* %395)
  %397 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %398 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %397, i32 0, i32 6
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 4
  %402 = load %struct.tcf_nat*, %struct.tcf_nat** %8, align 8
  %403 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %402, i32 0, i32 5
  %404 = call i32 @spin_unlock(i32* %403)
  %405 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %405, i32* %4, align 4
  br label %406

406:                                              ; preds = %393, %391
  %407 = load i32, i32* %4, align 4
  ret i32 %407
}

declare dso_local %struct.tcf_nat* @to_tcf_nat(%struct.tc_action*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_update(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_try_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @csum_replace4(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @inet_proto_csum_replace4(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
