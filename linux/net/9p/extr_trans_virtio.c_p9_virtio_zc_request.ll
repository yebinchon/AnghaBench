; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_virtio_zc_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_p9_virtio_zc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { %struct.virtio_chan* }
%struct.virtio_chan = type { i32, i32, i32, i32*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.p9_req_t = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.iov_iter = type { i32 }
%struct.page = type { i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"virtio request\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_STATUS_SENT = common dso_local global i64 0, align 8
@VIRTQUEUE_NUM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Retry virtio request\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"virtio rpc add_sgs returned failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"virtio request kicked\0A\00", align 1
@REQ_STATUS_RCVD = common dso_local global i64 0, align 8
@vp_pinned = common dso_local global i32 0, align 4
@vp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*, %struct.iov_iter*, %struct.iov_iter*, i32, i32, i32)* @p9_virtio_zc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_virtio_zc_request(%struct.p9_client* %0, %struct.p9_req_t* %1, %struct.iov_iter* %2, %struct.iov_iter* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.p9_client*, align 8
  %9 = alloca %struct.p9_req_t*, align 8
  %10 = alloca %struct.iov_iter*, align 8
  %11 = alloca %struct.iov_iter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.page**, align 8
  %24 = alloca %struct.page**, align 8
  %25 = alloca %struct.virtio_chan*, align 8
  %26 = alloca [4 x %struct.scatterlist*], align 16
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %8, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %9, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %10, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store %struct.page** null, %struct.page*** %23, align 8
  store %struct.page** null, %struct.page*** %24, align 8
  %35 = load %struct.p9_client*, %struct.p9_client** %8, align 8
  %36 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %35, i32 0, i32 0
  %37 = load %struct.virtio_chan*, %struct.virtio_chan** %36, align 8
  store %struct.virtio_chan* %37, %struct.virtio_chan** %25, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %38 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %39 = call i32 @p9_debug(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %41 = icmp ne %struct.iov_iter* %40, null
  br i1 %41, label %42, label %92

42:                                               ; preds = %7
  %43 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %44 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @p9_get_mapped_pages(%struct.virtio_chan* %43, %struct.page*** %24, %struct.iov_iter* %44, i32 %45, i64* %27, i32* %28)
  store i32 %46, i32* %31, align 4
  %47 = load i32, i32* %31, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %31, align 4
  store i32 %50, i32* %17, align 4
  br label %333

51:                                               ; preds = %42
  %52 = load i32, i32* %31, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %27, align 8
  %55 = add i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = call i32 @DIV_ROUND_UP(i32 %56, i32 %57)
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* %31, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %51
  %63 = load i32, i32* %31, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  store i32 %64, i32* %32, align 4
  %65 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %66 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %70 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  %76 = call i32 @memcpy(i32* %75, i32* %32, i32 4)
  %77 = load i32, i32* %31, align 4
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %62, %51
  %79 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %80 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @cpu_to_le32(i32 %84)
  store i32 %85, i32* %30, align 4
  %86 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %87 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = call i32 @memcpy(i32* %90, i32* %30, i32 4)
  br label %133

92:                                               ; preds = %7
  %93 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %94 = icmp ne %struct.iov_iter* %93, null
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %97 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @p9_get_mapped_pages(%struct.virtio_chan* %96, %struct.page*** %23, %struct.iov_iter* %97, i32 %98, i64* %27, i32* %28)
  store i32 %99, i32* %33, align 4
  %100 = load i32, i32* %33, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %33, align 4
  store i32 %103, i32* %17, align 4
  br label %333

104:                                              ; preds = %95
  %105 = load i32, i32* %33, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %27, align 8
  %108 = add i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = call i32 @DIV_ROUND_UP(i32 %109, i32 %110)
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %33, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %104
  %116 = load i32, i32* %33, align 4
  %117 = call i32 @cpu_to_le32(i32 %116)
  store i32 %117, i32* %34, align 4
  %118 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %119 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %123 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %121, i64 %127
  %129 = call i32 @memcpy(i32* %128, i32* %34, i32 4)
  %130 = load i32, i32* %33, align 4
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %115, %104
  br label %132

132:                                              ; preds = %131, %92
  br label %133

133:                                              ; preds = %132, %78
  %134 = load i64, i64* @REQ_STATUS_SENT, align 8
  %135 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %136 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %300, %133
  %138 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %139 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %138, i32 0, i32 1
  %140 = load i64, i64* %20, align 8
  %141 = call i32 @spin_lock_irqsave(i32* %139, i64 %140)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %142 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %143 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %142, i32 0, i32 4
  %144 = load %struct.scatterlist*, %struct.scatterlist** %143, align 8
  %145 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %146 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %147 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %151 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @pack_sg_list(%struct.scatterlist* %144, i32 0, i32 %145, i32* %149, i32 %153)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %137
  %158 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %159 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %158, i32 0, i32 4
  %160 = load %struct.scatterlist*, %struct.scatterlist** %159, align 8
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds [4 x %struct.scatterlist*], [4 x %struct.scatterlist*]* %26, i64 0, i64 %163
  store %struct.scatterlist* %160, %struct.scatterlist** %164, align 8
  br label %165

165:                                              ; preds = %157, %137
  %166 = load %struct.page**, %struct.page*** %24, align 8
  %167 = icmp ne %struct.page** %166, null
  br i1 %167, label %168, label %193

168:                                              ; preds = %165
  %169 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %170 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %169, i32 0, i32 4
  %171 = load %struct.scatterlist*, %struct.scatterlist** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %171, i64 %173
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %18, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds [4 x %struct.scatterlist*], [4 x %struct.scatterlist*]* %26, i64 0, i64 %177
  store %struct.scatterlist* %174, %struct.scatterlist** %178, align 8
  %179 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %180 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %179, i32 0, i32 4
  %181 = load %struct.scatterlist*, %struct.scatterlist** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %184 = load %struct.page**, %struct.page*** %24, align 8
  %185 = load i32, i32* %22, align 4
  %186 = load i64, i64* %27, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call i64 @pack_sg_list_p(%struct.scatterlist* %181, i32 %182, i32 %183, %struct.page** %184, i32 %185, i64 %186, i32 %187)
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %16, align 4
  br label %193

193:                                              ; preds = %168, %165
  %194 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %195 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %194, i32 0, i32 4
  %196 = load %struct.scatterlist*, %struct.scatterlist** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %199 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %200 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = call i32 @pack_sg_list(%struct.scatterlist* %196, i32 %197, i32 %198, i32* %202, i32 %203)
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %193
  %208 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %209 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %208, i32 0, i32 4
  %210 = load %struct.scatterlist*, %struct.scatterlist** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %210, i64 %212
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %19, align 4
  %217 = add nsw i32 %214, %215
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4 x %struct.scatterlist*], [4 x %struct.scatterlist*]* %26, i64 0, i64 %218
  store %struct.scatterlist* %213, %struct.scatterlist** %219, align 8
  br label %220

220:                                              ; preds = %207, %193
  %221 = load %struct.page**, %struct.page*** %23, align 8
  %222 = icmp ne %struct.page** %221, null
  br i1 %222, label %223, label %255

223:                                              ; preds = %220
  %224 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %225 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %224, i32 0, i32 4
  %226 = load %struct.scatterlist*, %struct.scatterlist** %225, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %226, i64 %228
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %229, i64 %231
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %19, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %19, align 4
  %236 = add nsw i32 %233, %234
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [4 x %struct.scatterlist*], [4 x %struct.scatterlist*]* %26, i64 0, i64 %237
  store %struct.scatterlist* %232, %struct.scatterlist** %238, align 8
  %239 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %240 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %239, i32 0, i32 4
  %241 = load %struct.scatterlist*, %struct.scatterlist** %240, align 8
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %242, %243
  %245 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %246 = load %struct.page**, %struct.page*** %23, align 8
  %247 = load i32, i32* %21, align 4
  %248 = load i64, i64* %27, align 8
  %249 = load i32, i32* %12, align 4
  %250 = call i64 @pack_sg_list_p(%struct.scatterlist* %241, i32 %244, i32 %245, %struct.page** %246, i32 %247, i64 %248, i32 %249)
  %251 = load i32, i32* %15, align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %15, align 4
  br label %255

255:                                              ; preds = %223, %220
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %19, align 4
  %258 = add nsw i32 %256, %257
  %259 = getelementptr inbounds [4 x %struct.scatterlist*], [4 x %struct.scatterlist*]* %26, i64 0, i64 0
  %260 = call i32 @ARRAY_SIZE(%struct.scatterlist** %259)
  %261 = icmp sgt i32 %258, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 @BUG_ON(i32 %262)
  %264 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %265 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = getelementptr inbounds [4 x %struct.scatterlist*], [4 x %struct.scatterlist*]* %26, i64 0, i64 0
  %268 = load i32, i32* %18, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %271 = load i32, i32* @GFP_ATOMIC, align 4
  %272 = call i32 @virtqueue_add_sgs(i32 %266, %struct.scatterlist** %267, i32 %268, i32 %269, %struct.p9_req_t* %270, i32 %271)
  store i32 %272, i32* %17, align 4
  %273 = load i32, i32* %17, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %312

275:                                              ; preds = %255
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* @ENOSPC, align 4
  %278 = sub nsw i32 0, %277
  %279 = icmp eq i32 %276, %278
  br i1 %279, label %280, label %303

280:                                              ; preds = %275
  %281 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %282 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %281, i32 0, i32 0
  store i32 0, i32* %282, align 8
  %283 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %284 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %283, i32 0, i32 1
  %285 = load i64, i64* %20, align 8
  %286 = call i32 @spin_unlock_irqrestore(i32* %284, i64 %285)
  %287 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %288 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %287, i32 0, i32 3
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %292 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @wait_event_killable(i32 %290, i32 %293)
  store i32 %294, i32* %17, align 4
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* @ERESTARTSYS, align 4
  %297 = sub nsw i32 0, %296
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %280
  br label %333

300:                                              ; preds = %280
  %301 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %302 = call i32 @p9_debug(i32 %301, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %137

303:                                              ; preds = %275
  %304 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %305 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %304, i32 0, i32 1
  %306 = load i64, i64* %20, align 8
  %307 = call i32 @spin_unlock_irqrestore(i32* %305, i64 %306)
  %308 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %309 = call i32 @p9_debug(i32 %308, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %310 = load i32, i32* @EIO, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %17, align 4
  br label %333

312:                                              ; preds = %255
  %313 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %314 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @virtqueue_kick(i32 %315)
  %317 = load %struct.virtio_chan*, %struct.virtio_chan** %25, align 8
  %318 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %317, i32 0, i32 1
  %319 = load i64, i64* %20, align 8
  %320 = call i32 @spin_unlock_irqrestore(i32* %318, i64 %319)
  store i32 1, i32* %29, align 4
  %321 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %322 = call i32 @p9_debug(i32 %321, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %323 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %324 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %327 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @REQ_STATUS_RCVD, align 8
  %330 = icmp sge i64 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 @wait_event_killable(i32 %325, i32 %331)
  store i32 %332, i32* %17, align 4
  br label %333

333:                                              ; preds = %312, %303, %299, %102, %49
  %334 = load i32, i32* %28, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %356

336:                                              ; preds = %333
  %337 = load %struct.page**, %struct.page*** %23, align 8
  %338 = icmp ne %struct.page** %337, null
  br i1 %338, label %339, label %345

339:                                              ; preds = %336
  %340 = load %struct.page**, %struct.page*** %23, align 8
  %341 = load i32, i32* %21, align 4
  %342 = call i32 @p9_release_pages(%struct.page** %340, i32 %341)
  %343 = load i32, i32* %21, align 4
  %344 = call i32 @atomic_sub(i32 %343, i32* @vp_pinned)
  br label %345

345:                                              ; preds = %339, %336
  %346 = load %struct.page**, %struct.page*** %24, align 8
  %347 = icmp ne %struct.page** %346, null
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = load %struct.page**, %struct.page*** %24, align 8
  %350 = load i32, i32* %22, align 4
  %351 = call i32 @p9_release_pages(%struct.page** %349, i32 %350)
  %352 = load i32, i32* %22, align 4
  %353 = call i32 @atomic_sub(i32 %352, i32* @vp_pinned)
  br label %354

354:                                              ; preds = %348, %345
  %355 = call i32 @wake_up(i32* @vp_wq)
  br label %356

356:                                              ; preds = %354, %333
  %357 = load %struct.page**, %struct.page*** %23, align 8
  %358 = call i32 @kvfree(%struct.page** %357)
  %359 = load %struct.page**, %struct.page*** %24, align 8
  %360 = call i32 @kvfree(%struct.page** %359)
  %361 = load i32, i32* %29, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %356
  %364 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %365 = call i32 @p9_req_put(%struct.p9_req_t* %364)
  br label %366

366:                                              ; preds = %363, %356
  %367 = load i32, i32* %17, align 4
  ret i32 %367
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local i32 @p9_get_mapped_pages(%struct.virtio_chan*, %struct.page***, %struct.iov_iter*, i32, i64*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pack_sg_list(%struct.scatterlist*, i32, i32, i32*, i32) #1

declare dso_local i64 @pack_sg_list_p(%struct.scatterlist*, i32, i32, %struct.page**, i32, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.scatterlist**) #1

declare dso_local i32 @virtqueue_add_sgs(i32, %struct.scatterlist**, i32, i32, %struct.p9_req_t*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_killable(i32, i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @p9_release_pages(%struct.page**, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kvfree(%struct.page**) #1

declare dso_local i32 @p9_req_put(%struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
