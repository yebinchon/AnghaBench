; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_ip.c_ebt_ip_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_ip.c_ebt_ip_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_ip_info* }
%struct.ebt_ip_info = type { i32, i64, i32, i32, i32, i32, i64, i64*, i64*, i64*, i64*, i64* }
%struct.iphdr = type { i64, i32, i32, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%union.pkthdr = type { %struct.TYPE_5__ }

@EBT_IP_TOS = common dso_local global i32 0, align 4
@EBT_IP_SOURCE = common dso_local global i32 0, align 4
@EBT_IP_DEST = common dso_local global i32 0, align 4
@EBT_IP_PROTO = common dso_local global i32 0, align 4
@EBT_IP_DPORT = common dso_local global i32 0, align 4
@EBT_IP_SPORT = common dso_local global i32 0, align 4
@EBT_IP_ICMP = common dso_local global i32 0, align 4
@EBT_IP_IGMP = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_ip_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_ip_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ebt_ip_info*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.iphdr, align 8
  %9 = alloca %union.pkthdr*, align 8
  %10 = alloca %union.pkthdr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %13 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %14 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %13, i32 0, i32 0
  %15 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %14, align 8
  store %struct.ebt_ip_info* %15, %struct.ebt_ip_info** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = bitcast %struct.iphdr* %8 to %union.pkthdr*
  %18 = call %union.pkthdr* @skb_header_pointer(%struct.sk_buff* %16, i32 0, i32 72, %union.pkthdr* %17)
  %19 = bitcast %union.pkthdr* %18 to %struct.iphdr*
  store %struct.iphdr* %19, %struct.iphdr** %7, align 8
  %20 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %21 = icmp eq %struct.iphdr* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %322

23:                                               ; preds = %2
  %24 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %25 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EBT_IP_TOS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %32 = load i32, i32* @EBT_IP_TOS, align 4
  %33 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %34 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @NF_INVF(%struct.ebt_ip_info* %31, i32 %32, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %322

44:                                               ; preds = %30, %23
  %45 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %46 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @EBT_IP_SOURCE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %53 = load i32, i32* @EBT_IP_SOURCE, align 4
  %54 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %58 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %56, %59
  %61 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %62 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @NF_INVF(%struct.ebt_ip_info* %52, i32 %53, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %322

69:                                               ; preds = %51, %44
  %70 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %71 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EBT_IP_DEST, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %78 = load i32, i32* @EBT_IP_DEST, align 4
  %79 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %83 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %81, %84
  %86 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %87 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 @NF_INVF(%struct.ebt_ip_info* %77, i32 %78, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %322

94:                                               ; preds = %76, %69
  %95 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %96 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @EBT_IP_PROTO, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %321

101:                                              ; preds = %94
  %102 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %103 = load i32, i32* @EBT_IP_PROTO, align 4
  %104 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %105 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %108 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 @NF_INVF(%struct.ebt_ip_info* %102, i32 %103, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %322

115:                                              ; preds = %101
  %116 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %117 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @EBT_IP_DPORT, align 4
  %120 = load i32, i32* @EBT_IP_SPORT, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @EBT_IP_ICMP, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @EBT_IP_IGMP, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %118, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %115
  store i32 1, i32* %3, align 4
  br label %322

129:                                              ; preds = %115
  %130 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ntohs(i32 %132)
  %134 = load i32, i32* @IP_OFFSET, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %322

138:                                              ; preds = %129
  %139 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %140 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %142, 4
  %144 = call %union.pkthdr* @skb_header_pointer(%struct.sk_buff* %139, i32 %143, i32 16, %union.pkthdr* %10)
  store %union.pkthdr* %144, %union.pkthdr** %9, align 8
  %145 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %146 = icmp eq %union.pkthdr* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %322

148:                                              ; preds = %138
  %149 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %150 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @EBT_IP_DPORT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %186

155:                                              ; preds = %148
  %156 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %157 = bitcast %union.pkthdr* %156 to %struct.TYPE_4__*
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ntohs(i32 %159)
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %11, align 8
  %162 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %163 = load i32, i32* @EBT_IP_DPORT, align 4
  %164 = load i64, i64* %11, align 8
  %165 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %166 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %165, i32 0, i32 7
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %164, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %155
  %172 = load i64, i64* %11, align 8
  %173 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %174 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %173, i32 0, i32 7
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %172, %177
  br label %179

179:                                              ; preds = %171, %155
  %180 = phi i1 [ true, %155 ], [ %178, %171 ]
  %181 = zext i1 %180 to i32
  %182 = call i64 @NF_INVF(%struct.ebt_ip_info* %162, i32 %163, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i32 0, i32* %3, align 4
  br label %322

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %148
  %187 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %188 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @EBT_IP_SPORT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %224

193:                                              ; preds = %186
  %194 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %195 = bitcast %union.pkthdr* %194 to %struct.TYPE_4__*
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @ntohs(i32 %197)
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %12, align 8
  %200 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %201 = load i32, i32* @EBT_IP_SPORT, align 4
  %202 = load i64, i64* %12, align 8
  %203 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %204 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %203, i32 0, i32 8
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp slt i64 %202, %207
  br i1 %208, label %217, label %209

209:                                              ; preds = %193
  %210 = load i64, i64* %12, align 8
  %211 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %212 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %211, i32 0, i32 8
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %210, %215
  br label %217

217:                                              ; preds = %209, %193
  %218 = phi i1 [ true, %193 ], [ %216, %209 ]
  %219 = zext i1 %218 to i32
  %220 = call i64 @NF_INVF(%struct.ebt_ip_info* %200, i32 %201, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 0, i32* %3, align 4
  br label %322

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %223, %186
  %225 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %226 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @EBT_IP_ICMP, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %283

231:                                              ; preds = %224
  %232 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %233 = load i32, i32* @EBT_IP_ICMP, align 4
  %234 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %235 = bitcast %union.pkthdr* %234 to %struct.TYPE_5__*
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %239 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %238, i32 0, i32 9
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp slt i64 %237, %242
  br i1 %243, label %277, label %244

244:                                              ; preds = %231
  %245 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %246 = bitcast %union.pkthdr* %245 to %struct.TYPE_5__*
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %250 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %249, i32 0, i32 9
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp sgt i64 %248, %253
  br i1 %254, label %277, label %255

255:                                              ; preds = %244
  %256 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %257 = bitcast %union.pkthdr* %256 to %struct.TYPE_5__*
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %261 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %260, i32 0, i32 10
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp slt i64 %259, %264
  br i1 %265, label %277, label %266

266:                                              ; preds = %255
  %267 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %268 = bitcast %union.pkthdr* %267 to %struct.TYPE_5__*
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %272 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %271, i32 0, i32 10
  %273 = load i64*, i64** %272, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %270, %275
  br label %277

277:                                              ; preds = %266, %255, %244, %231
  %278 = phi i1 [ true, %255 ], [ true, %244 ], [ true, %231 ], [ %276, %266 ]
  %279 = zext i1 %278 to i32
  %280 = call i64 @NF_INVF(%struct.ebt_ip_info* %232, i32 %233, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  store i32 0, i32* %3, align 4
  br label %322

283:                                              ; preds = %277, %224
  %284 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %285 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @EBT_IP_IGMP, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %320

290:                                              ; preds = %283
  %291 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %292 = load i32, i32* @EBT_IP_IGMP, align 4
  %293 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %294 = bitcast %union.pkthdr* %293 to %struct.TYPE_6__*
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %298 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %297, i32 0, i32 11
  %299 = load i64*, i64** %298, align 8
  %300 = getelementptr inbounds i64, i64* %299, i64 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp slt i64 %296, %301
  br i1 %302, label %314, label %303

303:                                              ; preds = %290
  %304 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %305 = bitcast %union.pkthdr* %304 to %struct.TYPE_6__*
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.ebt_ip_info*, %struct.ebt_ip_info** %6, align 8
  %309 = getelementptr inbounds %struct.ebt_ip_info, %struct.ebt_ip_info* %308, i32 0, i32 11
  %310 = load i64*, i64** %309, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 1
  %312 = load i64, i64* %311, align 8
  %313 = icmp sgt i64 %307, %312
  br label %314

314:                                              ; preds = %303, %290
  %315 = phi i1 [ true, %290 ], [ %313, %303 ]
  %316 = zext i1 %315 to i32
  %317 = call i64 @NF_INVF(%struct.ebt_ip_info* %291, i32 %292, i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  store i32 0, i32* %3, align 4
  br label %322

320:                                              ; preds = %314, %283
  br label %321

321:                                              ; preds = %320, %94
  store i32 1, i32* %3, align 4
  br label %322

322:                                              ; preds = %321, %319, %282, %222, %184, %147, %137, %128, %114, %93, %68, %43, %22
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local %union.pkthdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %union.pkthdr*) #1

declare dso_local i64 @NF_INVF(%struct.ebt_ip_info*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
