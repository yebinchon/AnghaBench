; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_get_rw_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_get_rw_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_rw_ctxt = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.svcxprt_rdma = type { i32, i32 }

@rw_first_sgl = common dso_local global i32 0, align 4
@SG_CHUNK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_rdma_rw_ctxt* (%struct.svcxprt_rdma*, i32)* @svc_rdma_get_rw_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_rdma_rw_ctxt* @svc_rdma_get_rw_ctxt(%struct.svcxprt_rdma* %0, i32 %1) #0 {
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rdma_rw_ctxt*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %7 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %10 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %9, i32 0, i32 1
  %11 = call %struct.svc_rdma_rw_ctxt* @svc_rdma_next_ctxt(i32* %10)
  store %struct.svc_rdma_rw_ctxt* %11, %struct.svc_rdma_rw_ctxt** %5, align 8
  %12 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %13 = icmp ne %struct.svc_rdma_rw_ctxt* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %16 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %15, i32 0, i32 2
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %19 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %23 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %26 = load i32, i32* @rw_first_sgl, align 4
  %27 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %28 = call i32 @struct_size(%struct.svc_rdma_rw_ctxt* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.svc_rdma_rw_ctxt* @kmalloc(i32 %28, i32 %29)
  store %struct.svc_rdma_rw_ctxt* %30, %struct.svc_rdma_rw_ctxt** %5, align 8
  %31 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %32 = icmp ne %struct.svc_rdma_rw_ctxt* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  br label %59

34:                                               ; preds = %21
  %35 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %36 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %35, i32 0, i32 2
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  br label %38

38:                                               ; preds = %34, %14
  %39 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %40 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %43 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %46 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %45, i32 0, i32 0
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %49 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SG_CHUNK_SIZE, align 4
  %53 = call i64 @sg_alloc_table_chained(%struct.TYPE_2__* %46, i32 %47, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  %57 = call i32 @kfree(%struct.svc_rdma_rw_ctxt* %56)
  store %struct.svc_rdma_rw_ctxt* null, %struct.svc_rdma_rw_ctxt** %5, align 8
  br label %58

58:                                               ; preds = %55, %38
  br label %59

59:                                               ; preds = %58, %33
  %60 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %5, align 8
  ret %struct.svc_rdma_rw_ctxt* %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.svc_rdma_rw_ctxt* @svc_rdma_next_ctxt(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.svc_rdma_rw_ctxt* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.svc_rdma_rw_ctxt*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @sg_alloc_table_chained(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.svc_rdma_rw_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
