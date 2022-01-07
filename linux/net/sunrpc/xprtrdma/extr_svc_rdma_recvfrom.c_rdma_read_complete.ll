; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_rdma_read_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_rdma_read_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32, i32* }
%struct.svc_rdma_recv_ctxt = type { i32, i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rqst*, %struct.svc_rdma_recv_ctxt*)* @rdma_read_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_read_complete(%struct.svc_rqst* %0, %struct.svc_rdma_recv_ctxt* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  %5 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.svc_rdma_recv_ctxt* %1, %struct.svc_rdma_recv_ctxt** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %9 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @put_page(i32 %19)
  %21 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %22 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %12
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %39 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %41 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %44 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %48 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  store i32* %46, i32** %49, align 8
  %50 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %51 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %55 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 8
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %58 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %64 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %66 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %70 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %72 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %76, i32* %81, align 4
  %82 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %83 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %89 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %87, i32* %92, align 4
  %93 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %94 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %98 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %4, align 8
  %101 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %105 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  ret void
}

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
