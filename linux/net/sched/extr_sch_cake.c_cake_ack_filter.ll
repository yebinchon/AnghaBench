; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_ack_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_ack_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }
%struct.cake_sched_data = type { i64 }
%struct.cake_flow = type { %struct.sk_buff*, %struct.sk_buff* }
%struct.ipv6hdr = type { i32, i32, i32 }
%struct.tcphdr = type { i64, i64, i32 }
%struct.iphdr = type { i32, i64, i64, i32, i32 }

@CAKE_ACK_AGGRESSIVE = common dso_local global i64 0, align 8
@TCP_FLAG_ACK = common dso_local global i32 0, align 4
@TCP_FLAG_SYN = common dso_local global i32 0, align 4
@TCP_FLAG_ECE = common dso_local global i32 0, align 4
@TCP_FLAG_CWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.cake_sched_data*, %struct.cake_flow*)* @cake_ack_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cake_ack_filter(%struct.cake_sched_data* %0, %struct.cake_flow* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.cake_sched_data*, align 8
  %5 = alloca %struct.cake_flow*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.ipv6hdr*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca %struct.tcphdr*, align 8
  %17 = alloca %struct.iphdr*, align 8
  %18 = alloca %struct.iphdr*, align 8
  %19 = alloca %struct.ipv6hdr, align 4
  %20 = alloca %struct.ipv6hdr, align 4
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.cake_sched_data* %0, %struct.cake_sched_data** %4, align 8
  store %struct.cake_flow* %1, %struct.cake_flow** %5, align 8
  %28 = load %struct.cake_sched_data*, %struct.cake_sched_data** %4, align 8
  %29 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CAKE_ACK_AGGRESSIVE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %34 = load %struct.cake_flow*, %struct.cake_flow** %5, align 8
  %35 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  %37 = load %struct.cake_flow*, %struct.cake_flow** %5, align 8
  %38 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %37, i32 0, i32 1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  %40 = icmp eq %struct.sk_buff* %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %299

42:                                               ; preds = %2
  %43 = load %struct.cake_flow*, %struct.cake_flow** %5, align 8
  %44 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %43, i32 0, i32 1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %21, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %48 = call %struct.tcphdr* (%struct.sk_buff*, ...) @cake_get_tcphdr(%struct.sk_buff* %46, i8* %47, i64 64)
  store %struct.tcphdr* %48, %struct.tcphdr** %15, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %50 = call %struct.iphdr* @cake_get_iphdr(%struct.sk_buff* %49, %struct.ipv6hdr* %19)
  store %struct.iphdr* %50, %struct.iphdr** %17, align 8
  %51 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %52 = icmp ne %struct.tcphdr* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %299

54:                                               ; preds = %42
  %55 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %56 = call i32 @cake_tcph_get_tstamp(%struct.tcphdr* %55, i32* %24, i32* %25)
  %57 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %58 = call i32 @tcp_flag_word(%struct.tcphdr* %57)
  %59 = load i32, i32* @TCP_FLAG_ACK, align 4
  %60 = load i32, i32* @TCP_FLAG_SYN, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = load i32, i32* @TCP_FLAG_ACK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %299

66:                                               ; preds = %54
  %67 = load %struct.cake_flow*, %struct.cake_flow** %5, align 8
  %68 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %67, i32 0, i32 0
  %69 = load %struct.sk_buff*, %struct.sk_buff** %68, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %9, align 8
  br label %70

70:                                               ; preds = %252, %66
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %76 = icmp ne %struct.sk_buff* %74, %75
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ false, %70 ], [ %76, %73 ]
  br i1 %78, label %79, label %257

79:                                               ; preds = %77
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = call %struct.iphdr* @cake_get_iphdr(%struct.sk_buff* %80, %struct.ipv6hdr* %20)
  store %struct.iphdr* %81, %struct.iphdr** %18, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = call %struct.tcphdr* (%struct.sk_buff*, ...) @cake_get_tcphdr(%struct.sk_buff* %82, [64 x i8]* %14, i64 64)
  store %struct.tcphdr* %83, %struct.tcphdr** %16, align 8
  %84 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %85 = icmp ne %struct.tcphdr* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %79
  %87 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %88 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %91 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %110, label %94

94:                                               ; preds = %86
  %95 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %96 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %99 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %104 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %107 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102, %94, %86, %79
  br label %252

111:                                              ; preds = %102
  %112 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %143

116:                                              ; preds = %111
  %117 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %118 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %121 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %126 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %129 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124, %116
  br label %252

133:                                              ; preds = %124
  %134 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %135 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ntohs(i32 %136)
  %138 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 4, %140
  %142 = sub nsw i32 %137, %141
  store i32 %142, i32* %22, align 4
  br label %175

143:                                              ; preds = %111
  %144 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 6
  br i1 %147, label %148, label %172

148:                                              ; preds = %143
  %149 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %150 = bitcast %struct.iphdr* %149 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %150, %struct.ipv6hdr** %11, align 8
  %151 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %152 = bitcast %struct.iphdr* %151 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %152, %struct.ipv6hdr** %12, align 8
  %153 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %154 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %153, i32 0, i32 2
  %155 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %156 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %155, i32 0, i32 2
  %157 = call i64 @ipv6_addr_cmp(i32* %154, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %148
  %160 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %161 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %160, i32 0, i32 1
  %162 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %163 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %162, i32 0, i32 1
  %164 = call i64 @ipv6_addr_cmp(i32* %161, i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159, %148
  br label %252

167:                                              ; preds = %159
  %168 = load %struct.ipv6hdr*, %struct.ipv6hdr** %12, align 8
  %169 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ntohs(i32 %170)
  store i32 %171, i32* %22, align 4
  br label %174

172:                                              ; preds = %143
  %173 = call i32 @WARN_ON(i32 1)
  br label %252

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %133
  %176 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %177 = icmp ne %struct.sk_buff* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %180 = call i32 @tcp_flag_word(%struct.tcphdr* %179)
  %181 = load i32, i32* @TCP_FLAG_ECE, align 4
  %182 = load i32, i32* @TCP_FLAG_CWR, align 4
  %183 = or i32 %181, %182
  %184 = and i32 %180, %183
  %185 = load i32, i32* %26, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %188 = load i32, i32* %23, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %23, align 4
  br label %190

190:                                              ; preds = %187, %178, %175
  %191 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* %25, align 4
  %194 = call i32 @cake_tcph_may_drop(%struct.tcphdr* %191, i32 %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %190
  %197 = load i32, i32* %22, align 4
  %198 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %199 = call i32 @__tcp_hdrlen(%struct.tcphdr* %198)
  %200 = sub nsw i32 %197, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %196
  %203 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %204 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i64 @ntohl(i32 %205)
  %207 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %208 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @ntohl(i32 %209)
  %211 = call i64 @after(i64 %206, i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %202, %196, %190
  br label %252

214:                                              ; preds = %202
  %215 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %216 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %217 = call i32 @cake_tcph_sack_compare(%struct.tcphdr* %215, %struct.tcphdr* %216)
  store i32 %217, i32* %27, align 4
  %218 = load i32, i32* %27, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %233, label %220

220:                                              ; preds = %214
  %221 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %222 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @ntohl(i32 %223)
  %225 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %226 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i64 @ntohl(i32 %227)
  %229 = icmp eq i64 %224, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %220
  %231 = load i32, i32* %27, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %230, %214
  br label %252

234:                                              ; preds = %230, %220
  %235 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %236 = icmp ne %struct.sk_buff* %235, null
  br i1 %236, label %246, label %237

237:                                              ; preds = %234
  %238 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %238, %struct.sk_buff** %7, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %239, %struct.sk_buff** %8, align 8
  %240 = load %struct.tcphdr*, %struct.tcphdr** %16, align 8
  %241 = call i32 @tcp_flag_word(%struct.tcphdr* %240)
  %242 = load i32, i32* @TCP_FLAG_ECE, align 4
  %243 = load i32, i32* @TCP_FLAG_CWR, align 4
  %244 = or i32 %242, %243
  %245 = and i32 %241, %244
  store i32 %245, i32* %26, align 4
  br label %246

246:                                              ; preds = %237, %234
  %247 = load i32, i32* %23, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %23, align 4
  %249 = icmp sgt i32 %247, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  br label %280

251:                                              ; preds = %246
  br label %252

252:                                              ; preds = %251, %233, %213, %172, %166, %132, %110
  %253 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %253, %struct.sk_buff** %10, align 8
  %254 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 0
  %256 = load %struct.sk_buff*, %struct.sk_buff** %255, align 8
  store %struct.sk_buff* %256, %struct.sk_buff** %9, align 8
  br label %70

257:                                              ; preds = %77
  %258 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %259 = icmp ne %struct.sk_buff* %258, null
  br i1 %259, label %260, label %279

260:                                              ; preds = %257
  %261 = load i32, i32* %6, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %279

263:                                              ; preds = %260
  %264 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %265 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %264, i32 0, i32 0
  %266 = load %struct.sk_buff*, %struct.sk_buff** %265, align 8
  %267 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %268 = icmp eq %struct.sk_buff* %266, %267
  br i1 %268, label %269, label %279

269:                                              ; preds = %263
  %270 = load i32, i32* %26, align 4
  %271 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %272 = call i32 @tcp_flag_word(%struct.tcphdr* %271)
  %273 = load i32, i32* @TCP_FLAG_ECE, align 4
  %274 = load i32, i32* @TCP_FLAG_CWR, align 4
  %275 = or i32 %273, %274
  %276 = and i32 %272, %275
  %277 = icmp eq i32 %270, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %269
  br label %280

279:                                              ; preds = %269, %263, %260, %257
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %299

280:                                              ; preds = %278, %250
  %281 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %282 = icmp ne %struct.sk_buff* %281, null
  br i1 %282, label %283, label %289

283:                                              ; preds = %280
  %284 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %285 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %284, i32 0, i32 0
  %286 = load %struct.sk_buff*, %struct.sk_buff** %285, align 8
  %287 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %288 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %287, i32 0, i32 0
  store %struct.sk_buff* %286, %struct.sk_buff** %288, align 8
  br label %295

289:                                              ; preds = %280
  %290 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %291 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %290, i32 0, i32 0
  %292 = load %struct.sk_buff*, %struct.sk_buff** %291, align 8
  %293 = load %struct.cake_flow*, %struct.cake_flow** %5, align 8
  %294 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %293, i32 0, i32 0
  store %struct.sk_buff* %292, %struct.sk_buff** %294, align 8
  br label %295

295:                                              ; preds = %289, %283
  %296 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %297 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %296)
  %298 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %298, %struct.sk_buff** %3, align 8
  br label %299

299:                                              ; preds = %295, %279, %65, %53, %41
  %300 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %300
}

declare dso_local %struct.tcphdr* @cake_get_tcphdr(%struct.sk_buff*, ...) #1

declare dso_local %struct.iphdr* @cake_get_iphdr(%struct.sk_buff*, %struct.ipv6hdr*) #1

declare dso_local i32 @cake_tcph_get_tstamp(%struct.tcphdr*, i32*, i32*) #1

declare dso_local i32 @tcp_flag_word(%struct.tcphdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @ipv6_addr_cmp(i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cake_tcph_may_drop(%struct.tcphdr*, i32, i32) #1

declare dso_local i32 @__tcp_hdrlen(%struct.tcphdr*) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @cake_tcph_sack_compare(%struct.tcphdr*, %struct.tcphdr*) #1

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
