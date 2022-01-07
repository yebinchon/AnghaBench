; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_update_metrics.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_update_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i64, i64 }
%struct.dst_entry = type { i32 }
%struct.tcp_sock = type { i64, i32, i32, i32, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.tcp_metrics_block = type { i32 }

@TCP_METRIC_RTT = common dso_local global i32 0, align 4
@TCP_METRIC_RTTVAR = common dso_local global i32 0, align 4
@TCP_METRIC_SSTHRESH = common dso_local global i32 0, align 4
@TCP_METRIC_CWND = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i64 0, align 8
@TCP_METRIC_REORDERING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_metrics(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tcp_metrics_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %12)
  store %struct.inet_connection_sock* %13, %struct.inet_connection_sock** %3, align 8
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %14)
  store %struct.dst_entry* %15, %struct.dst_entry** %4, align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %16)
  store %struct.tcp_sock* %17, %struct.tcp_sock** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call %struct.net* @sock_net(%struct.sock* %18)
  store %struct.net* %19, %struct.net** %6, align 8
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call i32 @sk_dst_confirm(%struct.sock* %20)
  %22 = load %struct.net*, %struct.net** %6, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %29 = icmp ne %struct.dst_entry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %1
  br label %337

31:                                               ; preds = %27
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %34 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %45 = call %struct.tcp_metrics_block* @tcp_get_metrics(%struct.sock* %43, %struct.dst_entry* %44, i32 0)
  store %struct.tcp_metrics_block* %45, %struct.tcp_metrics_block** %7, align 8
  %46 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %47 = icmp ne %struct.tcp_metrics_block* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %50 = load i32, i32* @TCP_METRIC_RTT, align 4
  %51 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %55 = load i32, i32* @TCP_METRIC_RTT, align 4
  %56 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %48, %42
  br label %335

58:                                               ; preds = %37
  %59 = load %struct.sock*, %struct.sock** %2, align 8
  %60 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %61 = call %struct.tcp_metrics_block* @tcp_get_metrics(%struct.sock* %59, %struct.dst_entry* %60, i32 1)
  store %struct.tcp_metrics_block* %61, %struct.tcp_metrics_block** %7, align 8
  br label %62

62:                                               ; preds = %58
  %63 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %64 = icmp ne %struct.tcp_metrics_block* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %335

66:                                               ; preds = %62
  %67 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %68 = load i32, i32* @TCP_METRIC_RTT, align 4
  %69 = call i8* @tcp_metric_get(%struct.tcp_metrics_block* %67, i32 %68)
  %70 = ptrtoint i8* %69 to i64
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %73 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %71, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %78 = load i32, i32* @TCP_METRIC_RTT, align 4
  %79 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %10, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %86 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %8, align 8
  br label %94

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = ashr i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %8, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %8, align 8
  br label %94

94:                                               ; preds = %88, %84
  %95 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %96 = load i32, i32* @TCP_METRIC_RTT, align 4
  %97 = load i64, i64* %8, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %95, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %94, %66
  %101 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %102 = load i32, i32* @TCP_METRIC_RTTVAR, align 4
  %103 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %149, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %116 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %121 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %119, %111
  %124 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %125 = load i32, i32* @TCP_METRIC_RTTVAR, align 4
  %126 = call i8* @tcp_metric_get(%struct.tcp_metrics_block* %124, i32 %125)
  %127 = ptrtoint i8* %126 to i64
  store i64 %127, i64* %11, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %11, align 8
  %131 = icmp uge i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %11, align 8
  br label %143

135:                                              ; preds = %123
  %136 = load i64, i64* %11, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %136, %138
  %140 = lshr i64 %139, 2
  %141 = load i64, i64* %11, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %135, %132
  %144 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %145 = load i32, i32* @TCP_METRIC_RTTVAR, align 4
  %146 = load i64, i64* %11, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %144, i32 %145, i32 %147)
  br label %149

149:                                              ; preds = %143, %100
  %150 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %151 = call i64 @tcp_in_initial_slowstart(%struct.tcp_sock* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %205

153:                                              ; preds = %149
  %154 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %155 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %156 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %181, label %158

158:                                              ; preds = %153
  %159 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %160 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %161 = call i8* @tcp_metric_get(%struct.tcp_metrics_block* %159, i32 %160)
  %162 = ptrtoint i8* %161 to i32
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %158
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 1
  %170 = load i32, i32* %9, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %165
  %173 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %174 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %175 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %176 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 1
  %179 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %173, i32 %174, i32 %178)
  br label %180

180:                                              ; preds = %172, %165, %158
  br label %181

181:                                              ; preds = %180, %153
  %182 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %183 = load i32, i32* @TCP_METRIC_CWND, align 4
  %184 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %182, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %204, label %186

186:                                              ; preds = %181
  %187 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %188 = load i32, i32* @TCP_METRIC_CWND, align 4
  %189 = call i8* @tcp_metric_get(%struct.tcp_metrics_block* %187, i32 %188)
  %190 = ptrtoint i8* %189 to i32
  store i32 %190, i32* %9, align 4
  %191 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %192 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %186
  %197 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %198 = load i32, i32* @TCP_METRIC_CWND, align 4
  %199 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %200 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %197, i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %196, %186
  br label %204

204:                                              ; preds = %203, %181
  br label %331

205:                                              ; preds = %149
  %206 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %207 = call i32 @tcp_in_slow_start(%struct.tcp_sock* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %252, label %209

209:                                              ; preds = %205
  %210 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %211 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @TCP_CA_Open, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %252

215:                                              ; preds = %209
  %216 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %217 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %218 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %215
  %221 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %222 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %223 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %224 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 1
  %227 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %228 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @max(i32 %226, i32 %229)
  %231 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %221, i32 %222, i32 %230)
  br label %232

232:                                              ; preds = %220, %215
  %233 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %234 = load i32, i32* @TCP_METRIC_CWND, align 4
  %235 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %251, label %237

237:                                              ; preds = %232
  %238 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %239 = load i32, i32* @TCP_METRIC_CWND, align 4
  %240 = call i8* @tcp_metric_get(%struct.tcp_metrics_block* %238, i32 %239)
  %241 = ptrtoint i8* %240 to i32
  store i32 %241, i32* %9, align 4
  %242 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %243 = load i32, i32* @TCP_METRIC_CWND, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %246 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %244, %247
  %249 = ashr i32 %248, 1
  %250 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %242, i32 %243, i32 %249)
  br label %251

251:                                              ; preds = %237, %232
  br label %330

252:                                              ; preds = %209, %205
  %253 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %254 = load i32, i32* @TCP_METRIC_CWND, align 4
  %255 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %271, label %257

257:                                              ; preds = %252
  %258 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %259 = load i32, i32* @TCP_METRIC_CWND, align 4
  %260 = call i8* @tcp_metric_get(%struct.tcp_metrics_block* %258, i32 %259)
  %261 = ptrtoint i8* %260 to i32
  store i32 %261, i32* %9, align 4
  %262 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %263 = load i32, i32* @TCP_METRIC_CWND, align 4
  %264 = load i32, i32* %9, align 4
  %265 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %266 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %264, %267
  %269 = ashr i32 %268, 1
  %270 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %262, i32 %263, i32 %269)
  br label %271

271:                                              ; preds = %257, %252
  %272 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %273 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %274 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %272, i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %297, label %276

276:                                              ; preds = %271
  %277 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %278 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %279 = call i8* @tcp_metric_get(%struct.tcp_metrics_block* %277, i32 %278)
  %280 = ptrtoint i8* %279 to i32
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* %9, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %276
  %284 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %285 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %9, align 4
  %288 = icmp sgt i32 %286, %287
  br i1 %288, label %289, label %296

289:                                              ; preds = %283
  %290 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %291 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %292 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %293 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %290, i32 %291, i32 %294)
  br label %296

296:                                              ; preds = %289, %283, %276
  br label %297

297:                                              ; preds = %296, %271
  %298 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %299 = load i32, i32* @TCP_METRIC_REORDERING, align 4
  %300 = call i32 @tcp_metric_locked(%struct.tcp_metrics_block* %298, i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %329, label %302

302:                                              ; preds = %297
  %303 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %304 = load i32, i32* @TCP_METRIC_REORDERING, align 4
  %305 = call i8* @tcp_metric_get(%struct.tcp_metrics_block* %303, i32 %304)
  %306 = ptrtoint i8* %305 to i32
  store i32 %306, i32* %9, align 4
  %307 = load i32, i32* %9, align 4
  %308 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %309 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %307, %310
  br i1 %311, label %312, label %328

312:                                              ; preds = %302
  %313 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %314 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.net*, %struct.net** %6, align 8
  %317 = getelementptr inbounds %struct.net, %struct.net* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %315, %319
  br i1 %320, label %321, label %328

321:                                              ; preds = %312
  %322 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %323 = load i32, i32* @TCP_METRIC_REORDERING, align 4
  %324 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %325 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @tcp_metric_set(%struct.tcp_metrics_block* %322, i32 %323, i32 %326)
  br label %328

328:                                              ; preds = %321, %312, %302
  br label %329

329:                                              ; preds = %328, %297
  br label %330

330:                                              ; preds = %329, %251
  br label %331

331:                                              ; preds = %330, %204
  %332 = load i32, i32* @jiffies, align 4
  %333 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %7, align 8
  %334 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %333, i32 0, i32 0
  store i32 %332, i32* %334, align 4
  br label %335

335:                                              ; preds = %331, %65, %57
  %336 = call i32 (...) @rcu_read_unlock()
  br label %337

337:                                              ; preds = %335, %30
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_dst_confirm(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_metrics_block* @tcp_get_metrics(%struct.sock*, %struct.dst_entry*, i32) #1

declare dso_local i32 @tcp_metric_locked(%struct.tcp_metrics_block*, i32) #1

declare dso_local i32 @tcp_metric_set(%struct.tcp_metrics_block*, i32, i32) #1

declare dso_local i8* @tcp_metric_get(%struct.tcp_metrics_block*, i32) #1

declare dso_local i64 @tcp_in_initial_slowstart(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
