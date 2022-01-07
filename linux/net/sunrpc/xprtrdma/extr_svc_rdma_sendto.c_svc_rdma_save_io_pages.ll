; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_save_io_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_save_io_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32**, i32** }
%struct.svc_rdma_send_ctxt = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rqst*, %struct.svc_rdma_send_ctxt*)* @svc_rdma_save_io_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_save_io_pages(%struct.svc_rqst* %0, %struct.svc_rdma_send_ctxt* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_rdma_send_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.svc_rdma_send_ctxt* %1, %struct.svc_rdma_send_ctxt** %4, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load i32**, i32*** %8, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = ptrtoint i32** %9 to i64
  %14 = ptrtoint i32** %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %20 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %47, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.svc_rdma_send_ctxt*, %struct.svc_rdma_send_ctxt** %4, align 8
  %36 = getelementptr inbounds %struct.svc_rdma_send_ctxt, %struct.svc_rdma_send_ctxt* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* %34, i32** %40, align 8
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %42 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %55 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %54, i32 0, i32 1
  store i32** %53, i32*** %55, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
