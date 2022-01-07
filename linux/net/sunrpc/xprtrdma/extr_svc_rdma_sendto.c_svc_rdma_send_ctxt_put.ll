; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_ctxt_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send_ctxt_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.svc_rdma_send_ctxt = type { i32, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_rdma_send_ctxt_put(%struct.svcxprt_rdma* %0, %struct.svc_rdma_send_ctxt* %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_send_ctxt*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store %struct.svc_rdma_send_ctxt* %1, %struct.svc_rdma_send_ctxt** %4, align 8
  %7 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %8 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  store %struct.ib_device* %11, %struct.ib_device** %5, align 8
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %12
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %22 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %30 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @ib_dma_unmap_page(%struct.ib_device* %20, i32 %28, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %19
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %12

42:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %46 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %51 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @put_page(i32 %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %63 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %66 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %65, i32 0, i32 1
  %67 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %68 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %67, i32 0, i32 1
  %69 = call i32 @list_add(i32* %66, i32* %68)
  %70 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %71 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  ret void
}

declare dso_local i32 @ib_dma_unmap_page(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
