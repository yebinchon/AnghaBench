; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ep_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ep_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.rpcrdma_ia, %struct.rpcrdma_ep }
%struct.rpcrdma_ia = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.rpcrdma_ep = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_ep_destroy(%struct.rpcrdma_xprt* %0) #0 {
  %2 = alloca %struct.rpcrdma_xprt*, align 8
  %3 = alloca %struct.rpcrdma_ep*, align 8
  %4 = alloca %struct.rpcrdma_ia*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %2, align 8
  %5 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %5, i32 0, i32 1
  store %struct.rpcrdma_ep* %6, %struct.rpcrdma_ep** %3, align 8
  %7 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %2, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %7, i32 0, i32 0
  store %struct.rpcrdma_ia* %8, %struct.rpcrdma_ia** %4, align 8
  %9 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %10 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %3, align 8
  %22 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %23 = call i32 @rpcrdma_ep_disconnect(%struct.rpcrdma_ep* %21, %struct.rpcrdma_ia* %22)
  %24 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %25 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @rdma_destroy_qp(%struct.TYPE_4__* %26)
  %28 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %29 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %20, %13, %1
  %33 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %3, align 8
  %34 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %3, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ib_free_cq(i64 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %3, align 8
  %46 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %3, align 8
  %52 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ib_free_cq(i64 %54)
  br label %56

56:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @rpcrdma_ep_disconnect(%struct.rpcrdma_ep*, %struct.rpcrdma_ia*) #1

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_4__*) #1

declare dso_local i32 @ib_free_cq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
