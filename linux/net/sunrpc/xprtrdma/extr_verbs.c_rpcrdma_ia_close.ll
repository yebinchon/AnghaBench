; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ia_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ia_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_ia = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_ia_close(%struct.rpcrdma_ia* %0) #0 {
  %2 = alloca %struct.rpcrdma_ia*, align 8
  store %struct.rpcrdma_ia* %0, %struct.rpcrdma_ia** %2, align 8
  %3 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %4 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @IS_ERR(%struct.TYPE_5__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i32 @rdma_destroy_qp(%struct.TYPE_5__* %23)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %27 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @rdma_destroy_id(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %25, %7, %1
  %31 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %32 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %31, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %32, align 8
  %33 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %34 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %39 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @IS_ERR(%struct.TYPE_5__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %45 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @ib_dealloc_pd(%struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %43, %37, %30
  %49 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %2, align 8
  %50 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %49, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %50, align 8
  ret void
}

declare dso_local i32 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_5__*) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_5__*) #1

declare dso_local i32 @ib_dealloc_pd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
