; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_build_arg_xdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_build_arg_xdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { i32, i32, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.svc_rdma_recv_ctxt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rqst*, %struct.svc_rdma_recv_ctxt*)* @svc_rdma_build_arg_xdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_build_arg_xdr(%struct.svc_rqst* %0, %struct.svc_rdma_recv_ctxt* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.svc_rdma_recv_ctxt* %1, %struct.svc_rdma_recv_ctxt** %4, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 0
  store %struct.xdr_buf* %7, %struct.xdr_buf** %5, align 8
  %8 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %9 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %12 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %10, i32* %15, align 4
  %16 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %17 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %20 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %19, i32 0, i32 5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %25 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %30 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %35 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %37 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %39 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %42 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %44 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %47 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
