; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_rdma.c_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_rdma* }
%struct.p9_trans_rdma = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.p9_rdma_context = type { %struct.TYPE_8__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_sge*, %struct.TYPE_8__*, i32* }
%struct.ib_sge = type { i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@recv_done = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EIO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_rdma_context*)* @post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_recv(%struct.p9_client* %0, %struct.p9_rdma_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_rdma_context*, align 8
  %6 = alloca %struct.p9_trans_rdma*, align 8
  %7 = alloca %struct.ib_recv_wr, align 8
  %8 = alloca %struct.ib_sge, align 4
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_rdma_context* %1, %struct.p9_rdma_context** %5, align 8
  %9 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %10 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %9, i32 0, i32 1
  %11 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %10, align 8
  store %struct.p9_trans_rdma* %11, %struct.p9_trans_rdma** %6, align 8
  %12 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %13 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %18 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %22 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @ib_dma_map_single(i32 %16, i32 %20, i32 %23, i32 %24)
  %26 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %27 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %29 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %34 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ib_dma_mapping_error(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %68

39:                                               ; preds = %2
  %40 = load i32, i32* @recv_done, align 4
  %41 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %42 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %45 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %49 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %53 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %8, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %7, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = load %struct.p9_rdma_context*, %struct.p9_rdma_context** %5, align 8
  %60 = getelementptr inbounds %struct.p9_rdma_context, %struct.p9_rdma_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %7, i32 0, i32 2
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %61, align 8
  %62 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %7, i32 0, i32 1
  store %struct.ib_sge* %8, %struct.ib_sge** %62, align 8
  %63 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %7, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.p9_trans_rdma*, %struct.p9_trans_rdma** %6, align 8
  %65 = getelementptr inbounds %struct.p9_trans_rdma, %struct.p9_trans_rdma* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ib_post_recv(i32 %66, %struct.ib_recv_wr* %7, i32* null)
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %38
  %69 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %70 = call i32 @p9_debug(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %39
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

declare dso_local i32 @p9_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
