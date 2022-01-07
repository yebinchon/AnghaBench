; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_set_ring.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_set_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%union.tpacket_req_u = type { %struct.tpacket_req3 }
%struct.tpacket_req3 = type { i32, i64, i32 }
%struct.pgv = type { i32 }
%struct.packet_sock = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.packet_ring_buffer, %struct.TYPE_2__, %struct.packet_ring_buffer }
%struct.TYPE_2__ = type { i32 }
%struct.packet_ring_buffer = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.tpacket_req = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TPACKET_HDRLEN = common dso_local global i32 0, align 4
@TPACKET2_HDRLEN = common dso_local global i32 0, align 4
@TPACKET3_HDRLEN = common dso_local global i32 0, align 4
@TPACKET_ALIGNMENT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@tpacket_rcv = common dso_local global i32 0, align 4
@packet_rcv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"packet_mmap: vma is busy: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %union.tpacket_req_u*, i32, i32)* @packet_set_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_set_ring(%struct.sock* %0, %union.tpacket_req_u* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %union.tpacket_req_u*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pgv*, align 8
  %10 = alloca %struct.packet_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.packet_ring_buffer*, align 8
  %14 = alloca %struct.sk_buff_head*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.tpacket_req*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.tpacket_req3*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %union.tpacket_req_u* %1, %union.tpacket_req_u** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.pgv* null, %struct.pgv** %9, align 8
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call %struct.packet_sock* @pkt_sk(%struct.sock* %20)
  store %struct.packet_sock* %21, %struct.packet_sock** %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %16, align 4
  %24 = load %union.tpacket_req_u*, %union.tpacket_req_u** %6, align 8
  %25 = bitcast %union.tpacket_req_u* %24 to %struct.tpacket_req*
  store %struct.tpacket_req* %25, %struct.tpacket_req** %17, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %30 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %29, i32 0, i32 10
  br label %34

31:                                               ; preds = %4
  %32 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %33 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %32, i32 0, i32 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi %struct.packet_ring_buffer* [ %30, %28 ], [ %33, %31 ]
  store %struct.packet_ring_buffer* %35, %struct.packet_ring_buffer** %13, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi %struct.sk_buff_head* [ %40, %38 ], [ %43, %41 ]
  store %struct.sk_buff_head* %45, %struct.sk_buff_head** %14, align 8
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %52 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %51, i32 0, i32 7
  %53 = call i64 @atomic_read(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %430

56:                                               ; preds = %50
  %57 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %58 = call i64 @packet_read_pending(%struct.packet_ring_buffer* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %430

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %64 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %267

67:                                               ; preds = %62
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %16, align 4
  %70 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %71 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %430

76:                                               ; preds = %67
  %77 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %78 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %92 [
    i32 130, label %80
    i32 129, label %84
    i32 128, label %88
  ]

80:                                               ; preds = %76
  %81 = load i32, i32* @TPACKET_HDRLEN, align 4
  %82 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %83 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %92

84:                                               ; preds = %76
  %85 = load i32, i32* @TPACKET2_HDRLEN, align 4
  %86 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %87 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %92

88:                                               ; preds = %76
  %89 = load i32, i32* @TPACKET3_HDRLEN, align 4
  %90 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %91 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %76, %88, %84, %80
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  %95 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %96 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = icmp sle i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %430

104:                                              ; preds = %92
  %105 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %106 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @PAGE_ALIGNED(i64 %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %430

115:                                              ; preds = %104
  %116 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %117 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %120 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = add i32 %118, %121
  store i32 %122, i32* %18, align 4
  %123 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %124 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %125, 128
  br i1 %126, label %127, label %142

127:                                              ; preds = %115
  %128 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %129 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %union.tpacket_req_u*, %union.tpacket_req_u** %6, align 8
  %132 = bitcast %union.tpacket_req_u* %131 to %struct.tpacket_req3*
  %133 = getelementptr inbounds %struct.tpacket_req3, %struct.tpacket_req3* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i64 @BLK_PLUS_PRIV(i32 %135)
  %137 = load i32, i32* %18, align 4
  %138 = zext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = icmp slt i64 %130, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  br label %430

142:                                              ; preds = %127, %115
  %143 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %144 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = icmp ult i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %430

152:                                              ; preds = %142
  %153 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %154 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @TPACKET_ALIGNMENT, align 4
  %157 = sub nsw i32 %156, 1
  %158 = and i32 %155, %157
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  br label %430

162:                                              ; preds = %152
  %163 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %164 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %167 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = zext i32 %168 to i64
  %170 = sdiv i64 %165, %169
  %171 = trunc i64 %170 to i32
  %172 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %173 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %175 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %162
  br label %430

182:                                              ; preds = %162
  %183 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %184 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @UINT_MAX, align 4
  %187 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %188 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sdiv i32 %186, %189
  %191 = icmp sgt i32 %185, %190
  %192 = zext i1 %191 to i32
  %193 = call i64 @unlikely(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %182
  br label %430

196:                                              ; preds = %182
  %197 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %198 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %201 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 %199, %202
  %204 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %205 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %203, %206
  %208 = zext i1 %207 to i32
  %209 = call i64 @unlikely(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %196
  br label %430

212:                                              ; preds = %196
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %16, align 4
  %215 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %216 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 @get_order(i32 %218)
  store i32 %219, i32* %12, align 4
  %220 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %221 = load i32, i32* %12, align 4
  %222 = call %struct.pgv* @alloc_pg_vec(%struct.tpacket_req* %220, i32 %221)
  store %struct.pgv* %222, %struct.pgv** %9, align 8
  %223 = load %struct.pgv*, %struct.pgv** %9, align 8
  %224 = icmp ne %struct.pgv* %223, null
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i64 @unlikely(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %212
  br label %430

230:                                              ; preds = %212
  %231 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %232 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  switch i32 %233, label %265 [
    i32 128, label %234
  ]

234:                                              ; preds = %230
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %239 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %240 = load %struct.pgv*, %struct.pgv** %9, align 8
  %241 = load %union.tpacket_req_u*, %union.tpacket_req_u** %6, align 8
  %242 = call i32 @init_prb_bdqc(%struct.packet_sock* %238, %struct.packet_ring_buffer* %239, %struct.pgv* %240, %union.tpacket_req_u* %241)
  br label %264

243:                                              ; preds = %234
  %244 = load %union.tpacket_req_u*, %union.tpacket_req_u** %6, align 8
  %245 = bitcast %union.tpacket_req_u* %244 to %struct.tpacket_req3*
  store %struct.tpacket_req3* %245, %struct.tpacket_req3** %19, align 8
  %246 = load %struct.tpacket_req3*, %struct.tpacket_req3** %19, align 8
  %247 = getelementptr inbounds %struct.tpacket_req3, %struct.tpacket_req3* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %260, label %250

250:                                              ; preds = %243
  %251 = load %struct.tpacket_req3*, %struct.tpacket_req3** %19, align 8
  %252 = getelementptr inbounds %struct.tpacket_req3, %struct.tpacket_req3* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load %struct.tpacket_req3*, %struct.tpacket_req3** %19, align 8
  %257 = getelementptr inbounds %struct.tpacket_req3, %struct.tpacket_req3* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255, %250, %243
  %261 = load i32, i32* @EINVAL, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %16, align 4
  br label %419

263:                                              ; preds = %255
  br label %264

264:                                              ; preds = %263, %237
  br label %266

265:                                              ; preds = %230
  br label %266

266:                                              ; preds = %265, %264
  br label %277

267:                                              ; preds = %62
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %16, align 4
  %270 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %271 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @unlikely(i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %430

276:                                              ; preds = %267
  br label %277

277:                                              ; preds = %276, %266
  %278 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %279 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %278, i32 0, i32 4
  %280 = call i32 @spin_lock(i32* %279)
  %281 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %282 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %11, align 4
  %284 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %285 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %15, align 8
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %277
  %290 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %291 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %290, i32 0, i32 5
  store i64 0, i64* %291, align 8
  %292 = load %struct.sock*, %struct.sock** %5, align 8
  %293 = call i32 @__unregister_prot_hook(%struct.sock* %292, i32 0)
  br label %294

294:                                              ; preds = %289, %277
  %295 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %296 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %295, i32 0, i32 4
  %297 = call i32 @spin_unlock(i32* %296)
  %298 = call i32 (...) @synchronize_net()
  %299 = load i32, i32* @EBUSY, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %16, align 4
  %301 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %302 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %301, i32 0, i32 6
  %303 = call i32 @mutex_lock(i32* %302)
  %304 = load i32, i32* %7, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %294
  %307 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %308 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %307, i32 0, i32 7
  %309 = call i64 @atomic_read(i32* %308)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %384

311:                                              ; preds = %306, %294
  store i32 0, i32* %16, align 4
  %312 = load %struct.sk_buff_head*, %struct.sk_buff_head** %14, align 8
  %313 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %312, i32 0, i32 0
  %314 = call i32 @spin_lock_bh(i32* %313)
  %315 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %316 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.pgv*, %struct.pgv** %9, align 8
  %319 = ptrtoint %struct.pgv* %318 to i32
  %320 = call i32 @swap(i32 %317, i32 %319)
  %321 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %322 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %323, 1
  %325 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %326 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %325, i32 0, i32 2
  store i32 %324, i32* %326, align 8
  %327 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %328 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %327, i32 0, i32 7
  store i64 0, i64* %328, align 8
  %329 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %330 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %333 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %332, i32 0, i32 3
  store i32 %331, i32* %333, align 4
  %334 = load %struct.sk_buff_head*, %struct.sk_buff_head** %14, align 8
  %335 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %334, i32 0, i32 0
  %336 = call i32 @spin_unlock_bh(i32* %335)
  %337 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %338 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %12, align 4
  %341 = call i32 @swap(i32 %339, i32 %340)
  %342 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %343 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %346 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @swap(i32 %344, i32 %347)
  %349 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %350 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load i32, i32* @PAGE_SIZE, align 4
  %353 = sext i32 %352 to i64
  %354 = sdiv i64 %351, %353
  %355 = trunc i64 %354 to i32
  %356 = load %struct.packet_ring_buffer*, %struct.packet_ring_buffer** %13, align 8
  %357 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %356, i32 0, i32 4
  store i32 %355, i32* %357, align 8
  %358 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %359 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %358, i32 0, i32 8
  %360 = getelementptr inbounds %struct.packet_ring_buffer, %struct.packet_ring_buffer* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %311
  %364 = load i32, i32* @tpacket_rcv, align 4
  br label %367

365:                                              ; preds = %311
  %366 = load i32, i32* @packet_rcv, align 4
  br label %367

367:                                              ; preds = %365, %363
  %368 = phi i32 [ %364, %363 ], [ %366, %365 ]
  %369 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %370 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %369, i32 0, i32 9
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 0
  store i32 %368, i32* %371, align 8
  %372 = load %struct.sk_buff_head*, %struct.sk_buff_head** %14, align 8
  %373 = call i32 @skb_queue_purge(%struct.sk_buff_head* %372)
  %374 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %375 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %374, i32 0, i32 7
  %376 = call i64 @atomic_read(i32* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %367
  %379 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %380 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %379, i32 0, i32 7
  %381 = call i64 @atomic_read(i32* %380)
  %382 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %381)
  br label %383

383:                                              ; preds = %378, %367
  br label %384

384:                                              ; preds = %383, %306
  %385 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %386 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %385, i32 0, i32 6
  %387 = call i32 @mutex_unlock(i32* %386)
  %388 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %389 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %388, i32 0, i32 4
  %390 = call i32 @spin_lock(i32* %389)
  %391 = load i32, i32* %11, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %384
  %394 = load i64, i64* %15, align 8
  %395 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %396 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %395, i32 0, i32 5
  store i64 %394, i64* %396, align 8
  %397 = load %struct.sock*, %struct.sock** %5, align 8
  %398 = call i32 @register_prot_hook(%struct.sock* %397)
  br label %399

399:                                              ; preds = %393, %384
  %400 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %401 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %400, i32 0, i32 4
  %402 = call i32 @spin_unlock(i32* %401)
  %403 = load %struct.pgv*, %struct.pgv** %9, align 8
  %404 = icmp ne %struct.pgv* %403, null
  br i1 %404, label %405, label %418

405:                                              ; preds = %399
  %406 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %407 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp sgt i32 %408, 129
  br i1 %409, label %410, label %418

410:                                              ; preds = %405
  %411 = load i32, i32* %8, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %417, label %413

413:                                              ; preds = %410
  %414 = load %struct.packet_sock*, %struct.packet_sock** %10, align 8
  %415 = load %struct.sk_buff_head*, %struct.sk_buff_head** %14, align 8
  %416 = call i32 @prb_shutdown_retire_blk_timer(%struct.packet_sock* %414, %struct.sk_buff_head* %415)
  br label %417

417:                                              ; preds = %413, %410
  br label %418

418:                                              ; preds = %417, %405, %399
  br label %419

419:                                              ; preds = %418, %260
  %420 = load %struct.pgv*, %struct.pgv** %9, align 8
  %421 = icmp ne %struct.pgv* %420, null
  br i1 %421, label %422, label %429

422:                                              ; preds = %419
  %423 = load %struct.pgv*, %struct.pgv** %9, align 8
  %424 = load i32, i32* %12, align 4
  %425 = load %struct.tpacket_req*, %struct.tpacket_req** %17, align 8
  %426 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @free_pg_vec(%struct.pgv* %423, i32 %424, i32 %427)
  br label %429

429:                                              ; preds = %422, %419
  br label %430

430:                                              ; preds = %429, %275, %229, %211, %195, %181, %161, %151, %141, %114, %103, %75, %60, %55
  %431 = load i32, i32* %16, align 4
  ret i32 %431
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @packet_read_pending(%struct.packet_ring_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PAGE_ALIGNED(i64) #1

declare dso_local i64 @BLK_PLUS_PRIV(i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.pgv* @alloc_pg_vec(%struct.tpacket_req*, i32) #1

declare dso_local i32 @init_prb_bdqc(%struct.packet_sock*, %struct.packet_ring_buffer*, %struct.pgv*, %union.tpacket_req_u*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__unregister_prot_hook(%struct.sock*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @register_prot_hook(%struct.sock*) #1

declare dso_local i32 @prb_shutdown_retire_blk_timer(%struct.packet_sock*, %struct.sk_buff_head*) #1

declare dso_local i32 @free_pg_vec(%struct.pgv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
