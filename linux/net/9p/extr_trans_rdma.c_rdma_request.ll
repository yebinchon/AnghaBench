; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_rdma_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_rdma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { %struct.p9_trans_rdma* }
%struct.p9_trans_rdma = type { i64, i32, %struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.p9_req_t = type { i32, %struct.TYPE_8__, %struct.TYPE_12__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.ib_send_wr = type { i32, %struct.ib_sge*, i32, i32, %struct.TYPE_10__*, i32* }
%struct.ib_sge = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.p9_rdma_context = type { %struct.TYPE_10__, %struct.p9_req_t*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"POST RECV failed: %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@send_done = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@REQ_STATUS_SENT = common dso_local global i32 0, align 4
@REQ_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error %d in rdma_request()\0A\00", align 1
@P9_RDMA_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @rdma_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_request(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca %struct.p9_trans_rdma*, align 8
  %7 = alloca %struct.ib_send_wr, align 8
  %8 = alloca %struct.ib_sge, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.p9_rdma_context*, align 8
  %12 = alloca %struct.p9_rdma_context*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %13 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %14 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %13, i32 0, i32 0
  %15 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %14, align 8
  store %struct.p9_trans_rdma* %15, %struct.p9_trans_rdma** %6, align 8
  store i32 0, i32* %9, align 4
  store %struct.p9_rdma_context* null, %struct.p9_rdma_context** %11, align 8
  store %struct.p9_rdma_context* null, %struct.p9_rdma_context** %12, align 8
  %16 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %17 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %16, i32 0, i32 3
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %25 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %24, i32 0, i32 3
  %26 = call i64 @atomic_sub_return(i32 1, i32* %25)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %30 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %29, i32 0, i32 2
  %31 = call i32 @p9_fcall_fini(%struct.TYPE_12__* %30)
  %32 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %33 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %77

35:                                               ; preds = %23
  %36 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %37 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %36, i32 0, i32 3
  %38 = call i32 @atomic_inc(i32* %37)
  br label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = call %struct.p9_rdma_context* @kmalloc(i32 32, i32 %41)
  store %struct.p9_rdma_context* %42, %struct.p9_rdma_context** %12, align 8
  %43 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %44 = icmp ne %struct.p9_rdma_context* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %187

48:                                               ; preds = %40
  %49 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %50 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %54 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %57 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %56, i32 0, i32 7
  %58 = call i64 @down_interruptible(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EINTR, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %187

63:                                               ; preds = %48
  %64 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %65 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %66 = call i32 @post_recv(%struct.p9_client* %64, %struct.p9_rdma_context* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @p9_debug(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %187

73:                                               ; preds = %63
  %74 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %75 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %73, %28
  %78 = load i32, i32* @GFP_NOFS, align 4
  %79 = call %struct.p9_rdma_context* @kmalloc(i32 32, i32 %78)
  store %struct.p9_rdma_context* %79, %struct.p9_rdma_context** %11, align 8
  %80 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %81 = icmp ne %struct.p9_rdma_context* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  br label %174

85:                                               ; preds = %77
  %86 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %87 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %88 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %87, i32 0, i32 1
  store %struct.p9_req_t* %86, %struct.p9_req_t** %88, align 8
  %89 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %90 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %95 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %94, i32 0, i32 1
  %96 = load %struct.p9_req_t*, %struct.p9_req_t** %95, align 8
  %97 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %101 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %100, i32 0, i32 1
  %102 = load %struct.p9_req_t*, %struct.p9_req_t** %101, align 8
  %103 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DMA_TO_DEVICE, align 4
  %107 = call i32 @ib_dma_map_single(i32 %93, i32 %99, i32 %105, i32 %106)
  %108 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %109 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %111 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %116 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @ib_dma_mapping_error(i32 %114, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %85
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %9, align 4
  br label %174

123:                                              ; preds = %85
  %124 = load i32, i32* @send_done, align 4
  %125 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %126 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %129 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  %132 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %133 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %132, i32 0, i32 1
  %134 = load %struct.p9_req_t*, %struct.p9_req_t** %133, align 8
  %135 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 1
  store i32 %137, i32* %138, align 4
  %139 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %140 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %139, i32 0, i32 6
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 5
  store i32* null, i32** %145, align 8
  %146 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %147 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 4
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %148, align 8
  %149 = load i32, i32* @IB_WR_SEND, align 4
  %150 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 3
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %152 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 2
  store i32 %151, i32* %152, align 8
  %153 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 1
  store %struct.ib_sge* %8, %struct.ib_sge** %153, align 8
  %154 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %156 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %155, i32 0, i32 5
  %157 = call i64 @down_interruptible(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %123
  %160 = load i32, i32* @EINTR, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %9, align 4
  br label %174

162:                                              ; preds = %123
  %163 = load i32, i32* @REQ_STATUS_SENT, align 4
  %164 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %165 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %167 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ib_post_send(i32 %168, %struct.ib_send_wr* %7, i32* null)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  br label %174

173:                                              ; preds = %162
  store i32 0, i32* %3, align 4
  br label %223

174:                                              ; preds = %172, %159, %120, %82
  %175 = load i32, i32* @REQ_STATUS_ERROR, align 4
  %176 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %177 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %11, align 8
  %179 = call i32 @kfree(%struct.p9_rdma_context* %178)
  %180 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @p9_debug(i32 %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  %183 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %184 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %183, i32 0, i32 3
  %185 = call i32 @atomic_inc(i32* %184)
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %3, align 4
  br label %223

187:                                              ; preds = %69, %60, %45
  %188 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %12, align 8
  %189 = call i32 @kfree(%struct.p9_rdma_context* %188)
  %190 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %191 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %190, i32 0, i32 1
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @spin_lock_irqsave(i32* %191, i64 %192)
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @EINTR, align 4
  %196 = sub nsw i32 0, %195
  %197 = icmp ne i32 %194, %196
  br i1 %197, label %198, label %216

198:                                              ; preds = %187
  %199 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %200 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @P9_RDMA_CLOSING, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %198
  %205 = load i64, i64* @P9_RDMA_CLOSING, align 8
  %206 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %207 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  %208 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %209 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %208, i32 0, i32 1
  %210 = load i64, i64* %10, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  %212 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %213 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %212, i32 0, i32 2
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = call i32 @rdma_disconnect(%struct.TYPE_11__* %214)
  br label %221

216:                                              ; preds = %198, %187
  %217 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %218 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %217, i32 0, i32 1
  %219 = load i64, i64* %10, align 8
  %220 = call i32 @spin_unlock_irqrestore(i32* %218, i64 %219)
  br label %221

221:                                              ; preds = %216, %204
  %222 = load i32, i32* %9, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %221, %174, %173
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_sub_return(i32, i32*) #1

declare dso_local i32 @p9_fcall_fini(%struct.TYPE_12__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.p9_rdma_context* @kmalloc(i32, i32) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @post_recv(%struct.p9_client*, %struct.p9_rdma_context*) #1

declare dso_local i32 @p9_debug(i32, i8*, i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

declare dso_local i32 @kfree(%struct.p9_rdma_context*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rdma_disconnect(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
