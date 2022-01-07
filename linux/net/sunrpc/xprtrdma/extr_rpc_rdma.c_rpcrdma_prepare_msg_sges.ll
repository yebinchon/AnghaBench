; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_prepare_msg_sges.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_prepare_msg_sges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { i32 }
%struct.rpcrdma_req = type { i32, %struct.rpcrdma_regbuf*, %struct.rpcrdma_sendctx* }
%struct.rpcrdma_regbuf = type { i32 }
%struct.rpcrdma_sendctx = type { i64, %struct.TYPE_6__, i32, %struct.ib_sge* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_sge = type { i32, i8*, i8* }
%struct.xdr_buf = type { i32, i32, %struct.TYPE_5__*, %struct.page**, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@rpcrdma_readch = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@RPCRDMA_MAX_SEND_SGES = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"rpcrdma: failed to DMA map a Send buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"rpcrdma: too many Send SGEs (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.xdr_buf*, i32)* @rpcrdma_prepare_msg_sges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_prepare_msg_sges(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_req* %1, %struct.xdr_buf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpcrdma_xprt*, align 8
  %7 = alloca %struct.rpcrdma_req*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpcrdma_sendctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rpcrdma_regbuf*, align 8
  %16 = alloca %struct.ib_sge*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.page**, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %6, align 8
  store %struct.rpcrdma_req* %1, %struct.rpcrdma_req** %7, align 8
  store %struct.xdr_buf* %2, %struct.xdr_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %19, i32 0, i32 2
  %21 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %20, align 8
  store %struct.rpcrdma_sendctx* %21, %struct.rpcrdma_sendctx** %10, align 8
  %22 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %23 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %22, i32 0, i32 1
  %24 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %23, align 8
  store %struct.rpcrdma_regbuf* %24, %struct.rpcrdma_regbuf** %15, align 8
  %25 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %10, align 8
  %26 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %25, i32 0, i32 3
  %27 = load %struct.ib_sge*, %struct.ib_sge** %26, align 8
  store %struct.ib_sge* %27, %struct.ib_sge** %16, align 8
  %28 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %29 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %30 = call i32 @rpcrdma_regbuf_dma_map(%struct.rpcrdma_xprt* %28, %struct.rpcrdma_regbuf* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %295

33:                                               ; preds = %4
  %34 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %35 = call i32 @rdmab_device(%struct.rpcrdma_regbuf* %34)
  %36 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %10, align 8
  %37 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  store i32 1, i32* %11, align 4
  %38 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %39 = call i8* @rdmab_addr(%struct.rpcrdma_regbuf* %38)
  %40 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %40, i64 %42
  %44 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %43, i32 0, i32 1
  store i8* %39, i8** %44, align 8
  %45 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %46 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %51, i64 %53
  %55 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %57 = call i8* @rdmab_lkey(%struct.rpcrdma_regbuf* %56)
  %58 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %58, i64 %60
  %62 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %61, i32 0, i32 2
  store i8* %57, i8** %62, align 8
  %63 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %64 = call i32 @rdmab_device(%struct.rpcrdma_regbuf* %63)
  %65 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %65, i64 %67
  %69 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %71, i64 %73
  %75 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @DMA_TO_DEVICE, align 4
  %78 = call i32 @ib_dma_sync_single_for_device(i32 %64, i8* %70, i32 %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @rpcrdma_readch, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %33
  %83 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %84 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ult i32 %89, 4
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %279

92:                                               ; preds = %82
  %93 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %94 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.page* @virt_to_page(i32 %98)
  store %struct.page* %99, %struct.page** %17, align 8
  %100 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %101 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @offset_in_page(i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = and i32 %107, 3
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = and i32 %111, 3
  %113 = load i32, i32* %13, align 4
  %114 = sub i32 %113, %112
  store i32 %114, i32* %13, align 4
  br label %234

115:                                              ; preds = %33
  %116 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %117 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %205

120:                                              ; preds = %115
  %121 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %122 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %121, i32 0, i32 3
  %123 = load %struct.page**, %struct.page*** %122, align 8
  %124 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %125 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PAGE_SHIFT, align 4
  %128 = ashr i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.page*, %struct.page** %123, i64 %129
  store %struct.page** %130, %struct.page*** %18, align 8
  %131 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %132 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @offset_in_page(i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %136 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %181, %120
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %204

141:                                              ; preds = %138
  %142 = load i32, i32* %11, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @RPCRDMA_MAX_SEND_SGES, align 4
  %146 = sub nsw i32 %145, 2
  %147 = icmp ugt i32 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %297

149:                                              ; preds = %141
  %150 = load i32, i32* @u32, align 4
  %151 = load i64, i64* @PAGE_SIZE, align 8
  %152 = load i32, i32* %12, align 4
  %153 = zext i32 %152 to i64
  %154 = sub nsw i64 %151, %153
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @min_t(i32 %150, i64 %154, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %158 = call i32 @rdmab_device(%struct.rpcrdma_regbuf* %157)
  %159 = load %struct.page**, %struct.page*** %18, align 8
  %160 = load %struct.page*, %struct.page** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @DMA_TO_DEVICE, align 4
  %164 = call i8* @ib_dma_map_page(i32 %158, %struct.page* %160, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %166 = load i32, i32* %11, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %165, i64 %167
  %169 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %168, i32 0, i32 1
  store i8* %164, i8** %169, align 8
  %170 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %171 = call i32 @rdmab_device(%struct.rpcrdma_regbuf* %170)
  %172 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %173 = load i32, i32* %11, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %172, i64 %174
  %176 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @ib_dma_mapping_error(i32 %171, i8* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %149
  br label %302

181:                                              ; preds = %149
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %184 = load i32, i32* %11, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %183, i64 %185
  %187 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %186, i32 0, i32 0
  store i32 %182, i32* %187, align 8
  %188 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %189 = call i8* @rdmab_lkey(%struct.rpcrdma_regbuf* %188)
  %190 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %191 = load i32, i32* %11, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %190, i64 %192
  %194 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %193, i32 0, i32 2
  store i8* %189, i8** %194, align 8
  %195 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %10, align 8
  %196 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %196, align 8
  %199 = load %struct.page**, %struct.page*** %18, align 8
  %200 = getelementptr inbounds %struct.page*, %struct.page** %199, i32 1
  store %struct.page** %200, %struct.page*** %18, align 8
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %14, align 4
  %203 = sub i32 %202, %201
  store i32 %203, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %138

204:                                              ; preds = %138
  br label %205

205:                                              ; preds = %204, %115
  %206 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %207 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %206, i32 0, i32 2
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %278

213:                                              ; preds = %205
  %214 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %215 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %214, i32 0, i32 2
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call %struct.page* @virt_to_page(i32 %219)
  store %struct.page* %220, %struct.page** %17, align 8
  %221 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %222 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %221, i32 0, i32 2
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @offset_in_page(i32 %226)
  store i32 %227, i32* %12, align 4
  %228 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %229 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %228, i32 0, i32 2
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %13, align 4
  br label %234

234:                                              ; preds = %213, %92
  %235 = load i32, i32* %11, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %11, align 4
  %237 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %238 = call i32 @rdmab_device(%struct.rpcrdma_regbuf* %237)
  %239 = load %struct.page*, %struct.page** %17, align 8
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* @DMA_TO_DEVICE, align 4
  %243 = call i8* @ib_dma_map_page(i32 %238, %struct.page* %239, i32 %240, i32 %241, i32 %242)
  %244 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %245 = load i32, i32* %11, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %244, i64 %246
  %248 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %247, i32 0, i32 1
  store i8* %243, i8** %248, align 8
  %249 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %250 = call i32 @rdmab_device(%struct.rpcrdma_regbuf* %249)
  %251 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %252 = load i32, i32* %11, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %251, i64 %253
  %255 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = call i64 @ib_dma_mapping_error(i32 %250, i8* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %234
  br label %302

260:                                              ; preds = %234
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %263 = load i32, i32* %11, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %262, i64 %264
  %266 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %265, i32 0, i32 0
  store i32 %261, i32* %266, align 8
  %267 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %15, align 8
  %268 = call i8* @rdmab_lkey(%struct.rpcrdma_regbuf* %267)
  %269 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %270 = load i32, i32* %11, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %269, i64 %271
  %273 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %272, i32 0, i32 2
  store i8* %268, i8** %273, align 8
  %274 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %10, align 8
  %275 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %276, 1
  store i64 %277, i64* %275, align 8
  br label %278

278:                                              ; preds = %260, %205
  br label %279

279:                                              ; preds = %278, %91
  %280 = load i32, i32* %11, align 4
  %281 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %10, align 8
  %282 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = add i32 %284, %280
  store i32 %285, i32* %283, align 8
  %286 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %10, align 8
  %287 = getelementptr inbounds %struct.rpcrdma_sendctx, %struct.rpcrdma_sendctx* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %279
  %291 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %292 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %291, i32 0, i32 0
  %293 = call i32 @kref_get(i32* %292)
  br label %294

294:                                              ; preds = %290, %279
  store i32 1, i32* %5, align 4
  br label %312

295:                                              ; preds = %32
  %296 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %312

297:                                              ; preds = %148
  %298 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %10, align 8
  %299 = call i32 @rpcrdma_sendctx_unmap(%struct.rpcrdma_sendctx* %298)
  %300 = load i32, i32* %11, align 4
  %301 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %300)
  store i32 0, i32* %5, align 4
  br label %312

302:                                              ; preds = %259, %180
  %303 = load %struct.rpcrdma_sendctx*, %struct.rpcrdma_sendctx** %10, align 8
  %304 = call i32 @rpcrdma_sendctx_unmap(%struct.rpcrdma_sendctx* %303)
  %305 = load %struct.ib_sge*, %struct.ib_sge** %16, align 8
  %306 = load i32, i32* %11, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %305, i64 %307
  %309 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @trace_xprtrdma_dma_maperr(i8* %310)
  store i32 0, i32* %5, align 4
  br label %312

312:                                              ; preds = %302, %297, %295, %294
  %313 = load i32, i32* %5, align 4
  ret i32 %313
}

declare dso_local i32 @rpcrdma_regbuf_dma_map(%struct.rpcrdma_xprt*, %struct.rpcrdma_regbuf*) #1

declare dso_local i32 @rdmab_device(%struct.rpcrdma_regbuf*) #1

declare dso_local i8* @rdmab_addr(%struct.rpcrdma_regbuf*) #1

declare dso_local i8* @rdmab_lkey(%struct.rpcrdma_regbuf*) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i8*, i32, i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i8* @ib_dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i8*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @rpcrdma_sendctx_unmap(%struct.rpcrdma_sendctx*) #1

declare dso_local i32 @trace_xprtrdma_dma_maperr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
