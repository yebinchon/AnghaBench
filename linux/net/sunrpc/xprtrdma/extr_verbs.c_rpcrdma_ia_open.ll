; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ia_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ia_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.rpcrdma_ia }
%struct.rpcrdma_ia = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"rpcrdma: ib_alloc_pd() returned %d\0A\00", align 1
@xprt_rdma_memreg_strategy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"rpcrdma: Device %s does not support memreg mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcrdma_ia_open(%struct.rpcrdma_xprt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  %4 = alloca %struct.rpcrdma_ia*, align 8
  %5 = alloca i32, align 4
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %3, align 8
  %6 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %7 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %6, i32 0, i32 0
  store %struct.rpcrdma_ia* %7, %struct.rpcrdma_ia** %4, align 8
  %8 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %9 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %10 = call %struct.TYPE_7__* @rpcrdma_create_id(%struct.rpcrdma_xprt* %8, %struct.rpcrdma_ia* %9)
  %11 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %11, i32 0, i32 0
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %12, align 8
  %13 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = call i64 @IS_ERR(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @PTR_ERR(%struct.TYPE_7__* %21)
  store i32 %22, i32* %5, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %25 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call %struct.TYPE_7__* @ib_alloc_pd(%struct.TYPE_8__* %28, i32 0)
  %30 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %31 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %30, i32 0, i32 1
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %31, align 8
  %32 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %33 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i64 @IS_ERR(%struct.TYPE_7__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %39 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.TYPE_7__* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %69

44:                                               ; preds = %23
  %45 = load i32, i32* @xprt_rdma_memreg_strategy, align 4
  switch i32 %45, label %56 [
    i32 128, label %46
  ]

46:                                               ; preds = %44
  %47 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %48 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @frwr_is_supported(%struct.TYPE_8__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %68

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %44, %55
  %57 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %58 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @xprt_rdma_memreg_strategy, align 4
  %65 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %73

69:                                               ; preds = %56, %37, %18
  %70 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %71 = call i32 @rpcrdma_ia_close(%struct.rpcrdma_ia* %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %68
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_7__* @rpcrdma_create_id(%struct.rpcrdma_xprt*, %struct.rpcrdma_ia*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @ib_alloc_pd(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @frwr_is_supported(%struct.TYPE_8__*) #1

declare dso_local i32 @rpcrdma_ia_close(%struct.rpcrdma_ia*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
