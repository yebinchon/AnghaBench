; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_setup_qp.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_cm.c_rds_ib_setup_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_ib_connection* }
%struct.rds_ib_connection = type { i32*, i32*, %struct.TYPE_7__*, i32, i8*, %struct.TYPE_6__, i32, i8*, %struct.TYPE_6__, i32, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_7__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_qp_init_attr = type { i32*, i32*, i32, i32, %struct.TYPE_5__, %struct.rds_connection*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ib_cq_init_attr = type { i32, i8* }
%struct.rds_ib_device = type { i32, i32, i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@RDS_IB_DEFAULT_FR_WR = common dso_local global i32 0, align 4
@rds_ib_cq_comp_handler_send = common dso_local global i32 0, align 4
@rds_ib_cq_event_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ib_create_cq send failed: %d\0A\00", align 1
@rds_ib_cq_comp_handler_recv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ib_create_cq recv failed: %d\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ib_req_notify_cq send failed: %d\0A\00", align 1
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"ib_req_notify_cq recv failed: %d\0A\00", align 1
@rds_ib_qp_event_handler = common dso_local global i32 0, align 4
@RDS_IB_RECV_SGE = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"rdma_create_qp failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"ib_dma_alloc_coherent send failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"ib_dma_alloc_coherent recv failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"ib_dma_alloc_coherent ack failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"send allocation failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"recv allocation failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"conn %p pd %p cq %p %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*)* @rds_ib_setup_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_ib_setup_qp(%struct.rds_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca %struct.rds_ib_connection*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_qp_init_attr, align 8
  %7 = alloca %struct.ib_cq_init_attr, align 8
  %8 = alloca %struct.rds_ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  %11 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %12 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %11, i32 0, i32 0
  %13 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %12, align 8
  store %struct.rds_ib_connection* %13, %struct.rds_ib_connection** %4, align 8
  %14 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %15 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.ib_device*, %struct.ib_device** %17, align 8
  store %struct.ib_device* %18, %struct.ib_device** %5, align 8
  %19 = bitcast %struct.ib_cq_init_attr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = call %struct.rds_ib_device* @rds_ib_get_client_data(%struct.ib_device* %20)
  store %struct.rds_ib_device* %21, %struct.rds_ib_device** %8, align 8
  %22 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %23 = icmp ne %struct.rds_ib_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %428

27:                                               ; preds = %1
  %28 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %29 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @RDS_IB_DEFAULT_FR_WR, align 4
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  store i32 %36, i32* %10, align 4
  %37 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %38 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %39 = call i32 @rds_ib_add_conn(%struct.rds_ib_device* %37, %struct.rds_connection* %38)
  %40 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %41 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %44 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %35
  %50 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %51 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %50, i32 0, i32 5
  %52 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %53 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @rds_ib_ring_resize(%struct.TYPE_6__* %51, i32 %55)
  br label %57

57:                                               ; preds = %49, %35
  %58 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %59 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %62 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %69 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %68, i32 0, i32 8
  %70 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %71 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @rds_ib_ring_resize(%struct.TYPE_6__* %69, i32 %73)
  br label %75

75:                                               ; preds = %67, %57
  %76 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %77 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %80 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %82 = call i8* @ibdev_get_unused_vector(%struct.rds_ib_device* %81)
  %83 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %84 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %83, i32 0, i32 15
  store i8* %82, i8** %84, align 8
  %85 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %86 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %7, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  %93 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %94 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %93, i32 0, i32 15
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %7, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %98 = load i32, i32* @rds_ib_cq_comp_handler_send, align 4
  %99 = load i32, i32* @rds_ib_cq_event_handler, align 4
  %100 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %101 = call i8* @ib_create_cq(%struct.ib_device* %97, i32 %98, i32 %99, %struct.rds_connection* %100, %struct.ib_cq_init_attr* %7)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %104 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %103, i32 0, i32 0
  store i32* %102, i32** %104, align 8
  %105 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %106 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i64 @IS_ERR(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %75
  %111 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %112 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @PTR_ERR(i32* %113)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %116 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  %117 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %118 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %119 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %118, i32 0, i32 15
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @ibdev_put_vector(%struct.rds_ib_device* %117, i8* %120)
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %122)
  br label %420

124:                                              ; preds = %75
  %125 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %126 = call i8* @ibdev_get_unused_vector(%struct.rds_ib_device* %125)
  %127 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %128 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %127, i32 0, i32 14
  store i8* %126, i8** %128, align 8
  %129 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %130 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %7, i32 0, i32 0
  store i32 %132, i32* %133, align 8
  %134 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %135 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %134, i32 0, i32 14
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %7, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %139 = load i32, i32* @rds_ib_cq_comp_handler_recv, align 4
  %140 = load i32, i32* @rds_ib_cq_event_handler, align 4
  %141 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %142 = call i8* @ib_create_cq(%struct.ib_device* %138, i32 %139, i32 %140, %struct.rds_connection* %141, %struct.ib_cq_init_attr* %7)
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %145 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %144, i32 0, i32 1
  store i32* %143, i32** %145, align 8
  %146 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %147 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i64 @IS_ERR(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %124
  %152 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %153 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @PTR_ERR(i32* %154)
  store i32 %155, i32* %9, align 4
  %156 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %157 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %156, i32 0, i32 1
  store i32* null, i32** %157, align 8
  %158 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %159 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %160 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %159, i32 0, i32 14
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @ibdev_put_vector(%struct.rds_ib_device* %158, i8* %161)
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  br label %413

165:                                              ; preds = %124
  %166 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %167 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %170 = call i32 @ib_req_notify_cq(i32* %168, i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i32, i32* %9, align 4
  %175 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  br label %406

176:                                              ; preds = %165
  %177 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %178 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %181 = call i32 @ib_req_notify_cq(i32* %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load i32, i32* %9, align 4
  %186 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %185)
  br label %406

187:                                              ; preds = %176
  %188 = call i32 @memset(%struct.ib_qp_init_attr* %6, i32 0, i32 56)
  %189 = load i32, i32* @rds_ib_qp_event_handler, align 4
  %190 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 6
  store i32 %189, i32* %190, align 8
  %191 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %192 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 5
  store %struct.rds_connection* %191, %struct.rds_connection** %192, align 8
  %193 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %194 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %196, %197
  %199 = add nsw i32 %198, 1
  %200 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %203 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %202, i32 0, i32 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  %207 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %210 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @RDS_IB_RECV_SGE, align 4
  %215 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %218 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 3
  store i32 %217, i32* %218, align 4
  %219 = load i32, i32* @IB_QPT_RC, align 4
  %220 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 2
  store i32 %219, i32* %220, align 8
  %221 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %222 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 1
  store i32* %223, i32** %224, align 8
  %225 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %226 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  store i32* %227, i32** %228, align 8
  %229 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %230 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %229, i32 0, i32 2
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %233 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %232, i32 0, i32 12
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @rdma_create_qp(%struct.TYPE_7__* %231, i32 %234, %struct.ib_qp_init_attr* %6)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %187
  %239 = load i32, i32* %9, align 4
  %240 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %239)
  br label %406

241:                                              ; preds = %187
  %242 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %243 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %244 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = mul i64 %247, 4
  %249 = trunc i64 %248 to i32
  %250 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %251 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %250, i32 0, i32 3
  %252 = load i32, i32* @GFP_KERNEL, align 4
  %253 = call i8* @ib_dma_alloc_coherent(%struct.ib_device* %242, i32 %249, i32* %251, i32 %252)
  %254 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %255 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %254, i32 0, i32 4
  store i8* %253, i8** %255, align 8
  %256 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %257 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %256, i32 0, i32 4
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %241
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %9, align 4
  %263 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %401

264:                                              ; preds = %241
  %265 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %266 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %267 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %266, i32 0, i32 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = mul i64 %270, 4
  %272 = trunc i64 %271 to i32
  %273 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %274 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %273, i32 0, i32 6
  %275 = load i32, i32* @GFP_KERNEL, align 4
  %276 = call i8* @ib_dma_alloc_coherent(%struct.ib_device* %265, i32 %272, i32* %274, i32 %275)
  %277 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %278 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %277, i32 0, i32 7
  store i8* %276, i8** %278, align 8
  %279 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %280 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %279, i32 0, i32 7
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %287, label %283

283:                                              ; preds = %264
  %284 = load i32, i32* @ENOMEM, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %9, align 4
  %286 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %385

287:                                              ; preds = %264
  %288 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %289 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %290 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %289, i32 0, i32 9
  %291 = load i32, i32* @GFP_KERNEL, align 4
  %292 = call i8* @ib_dma_alloc_coherent(%struct.ib_device* %288, i32 4, i32* %290, i32 %291)
  %293 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %294 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %293, i32 0, i32 10
  store i8* %292, i8** %294, align 8
  %295 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %296 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %295, i32 0, i32 10
  %297 = load i8*, i8** %296, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %303, label %299

299:                                              ; preds = %287
  %300 = load i32, i32* @ENOMEM, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %9, align 4
  %302 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %369

303:                                              ; preds = %287
  %304 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %305 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @array_size(i32 4, i32 %307)
  %309 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %310 = call i32 @ibdev_to_node(%struct.ib_device* %309)
  %311 = call i8* @vzalloc_node(i32 %308, i32 %310)
  %312 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %313 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %312, i32 0, i32 11
  store i8* %311, i8** %313, align 8
  %314 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %315 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %314, i32 0, i32 11
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %322, label %318

318:                                              ; preds = %303
  %319 = load i32, i32* @ENOMEM, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %9, align 4
  %321 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %360

322:                                              ; preds = %303
  %323 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %324 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %323, i32 0, i32 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @array_size(i32 4, i32 %326)
  %328 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %329 = call i32 @ibdev_to_node(%struct.ib_device* %328)
  %330 = call i8* @vzalloc_node(i32 %327, i32 %329)
  %331 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %332 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %331, i32 0, i32 13
  store i8* %330, i8** %332, align 8
  %333 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %334 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %333, i32 0, i32 13
  %335 = load i8*, i8** %334, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %341, label %337

337:                                              ; preds = %322
  %338 = load i32, i32* @ENOMEM, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %9, align 4
  %340 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %355

341:                                              ; preds = %322
  %342 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %343 = call i32 @rds_ib_recv_init_ack(%struct.rds_ib_connection* %342)
  %344 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %345 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %346 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %345, i32 0, i32 12
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %349 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %352 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), %struct.rds_connection* %344, i32 %347, i32* %350, i32* %353)
  br label %424

355:                                              ; preds = %337
  %356 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %357 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %356, i32 0, i32 11
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @vfree(i8* %358)
  br label %360

360:                                              ; preds = %355, %318
  %361 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %362 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %363 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %362, i32 0, i32 10
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %366 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %365, i32 0, i32 9
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @ib_dma_free_coherent(%struct.ib_device* %361, i32 4, i8* %364, i32 %367)
  br label %369

369:                                              ; preds = %360, %299
  %370 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %371 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %372 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %371, i32 0, i32 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = sext i32 %374 to i64
  %376 = mul i64 %375, 4
  %377 = trunc i64 %376 to i32
  %378 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %379 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %378, i32 0, i32 7
  %380 = load i8*, i8** %379, align 8
  %381 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %382 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %381, i32 0, i32 6
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @ib_dma_free_coherent(%struct.ib_device* %370, i32 %377, i8* %380, i32 %383)
  br label %385

385:                                              ; preds = %369, %283
  %386 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %387 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %388 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = sext i32 %390 to i64
  %392 = mul i64 %391, 4
  %393 = trunc i64 %392 to i32
  %394 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %395 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %394, i32 0, i32 4
  %396 = load i8*, i8** %395, align 8
  %397 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %398 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @ib_dma_free_coherent(%struct.ib_device* %386, i32 %393, i8* %396, i32 %399)
  br label %401

401:                                              ; preds = %385, %260
  %402 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %403 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %402, i32 0, i32 2
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %403, align 8
  %405 = call i32 @rdma_destroy_qp(%struct.TYPE_7__* %404)
  br label %406

406:                                              ; preds = %401, %238, %184, %173
  %407 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %408 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = call i32 @ib_destroy_cq(i32* %409)
  %411 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %412 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %411, i32 0, i32 1
  store i32* null, i32** %412, align 8
  br label %413

413:                                              ; preds = %406, %151
  %414 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %415 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %414, i32 0, i32 0
  %416 = load i32*, i32** %415, align 8
  %417 = call i32 @ib_destroy_cq(i32* %416)
  %418 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %4, align 8
  %419 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %418, i32 0, i32 0
  store i32* null, i32** %419, align 8
  br label %420

420:                                              ; preds = %413, %110
  %421 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %422 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %423 = call i32 @rds_ib_remove_conn(%struct.rds_ib_device* %421, %struct.rds_connection* %422)
  br label %424

424:                                              ; preds = %420, %341
  %425 = load %struct.rds_ib_device*, %struct.rds_ib_device** %8, align 8
  %426 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %425)
  %427 = load i32, i32* %9, align 4
  store i32 %427, i32* %2, align 4
  br label %428

428:                                              ; preds = %424, %24
  %429 = load i32, i32* %2, align 4
  ret i32 %429
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.rds_ib_device* @rds_ib_get_client_data(%struct.ib_device*) #2

declare dso_local i32 @rds_ib_add_conn(%struct.rds_ib_device*, %struct.rds_connection*) #2

declare dso_local i32 @rds_ib_ring_resize(%struct.TYPE_6__*, i32) #2

declare dso_local i8* @ibdev_get_unused_vector(%struct.rds_ib_device*) #2

declare dso_local i8* @ib_create_cq(%struct.ib_device*, i32, i32, %struct.rds_connection*, %struct.ib_cq_init_attr*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @ibdev_put_vector(%struct.rds_ib_device*, i8*) #2

declare dso_local i32 @rdsdebug(i8*, ...) #2

declare dso_local i32 @ib_req_notify_cq(i32*, i32) #2

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #2

declare dso_local i32 @rdma_create_qp(%struct.TYPE_7__*, i32, %struct.ib_qp_init_attr*) #2

declare dso_local i8* @ib_dma_alloc_coherent(%struct.ib_device*, i32, i32*, i32) #2

declare dso_local i8* @vzalloc_node(i32, i32) #2

declare dso_local i32 @array_size(i32, i32) #2

declare dso_local i32 @ibdev_to_node(%struct.ib_device*) #2

declare dso_local i32 @rds_ib_recv_init_ack(%struct.rds_ib_connection*) #2

declare dso_local i32 @vfree(i8*) #2

declare dso_local i32 @ib_dma_free_coherent(%struct.ib_device*, i32, i8*, i32) #2

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_7__*) #2

declare dso_local i32 @ib_destroy_cq(i32*) #2

declare dso_local i32 @rds_ib_remove_conn(%struct.rds_ib_device*, %struct.rds_connection*) #2

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
