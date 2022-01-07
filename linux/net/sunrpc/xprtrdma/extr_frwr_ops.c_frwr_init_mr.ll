; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_init_mr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_init_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_ia = type { i32, i32, i32 }
%struct.rpcrdma_mr = type { %struct.scatterlist*, %struct.TYPE_2__, i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.ib_mr* }
%struct.ib_mr = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@frwr_mr_recycle_worker = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frwr_init_mr(%struct.rpcrdma_ia* %0, %struct.rpcrdma_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpcrdma_ia*, align 8
  %5 = alloca %struct.rpcrdma_mr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.ib_mr*, align 8
  %9 = alloca i32, align 4
  store %struct.rpcrdma_ia* %0, %struct.rpcrdma_ia** %4, align 8
  store %struct.rpcrdma_mr* %1, %struct.rpcrdma_mr** %5, align 8
  %10 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %4, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.ib_mr* @ib_alloc_mr(i32 %15, i32 %18, i32 %19)
  store %struct.ib_mr* %20, %struct.ib_mr** %8, align 8
  %21 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %22 = call i64 @IS_ERR(%struct.ib_mr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %57

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = call %struct.scatterlist* @kcalloc(i32 %26, i32 4, i32 %27)
  store %struct.scatterlist* %28, %struct.scatterlist** %7, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %30 = icmp ne %struct.scatterlist* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %64

32:                                               ; preds = %25
  %33 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %34 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %5, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store %struct.ib_mr* %33, %struct.ib_mr** %36, align 8
  %37 = load i32, i32* @DMA_NONE, align 4
  %38 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %5, align 8
  %39 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %5, align 8
  %41 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %40, i32 0, i32 3
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %5, align 8
  %44 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %43, i32 0, i32 2
  %45 = load i32, i32* @frwr_mr_recycle_worker, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %5, align 8
  %48 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @init_completion(i32* %49)
  %51 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @sg_init_table(%struct.scatterlist* %51, i32 %52)
  %54 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %55 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %5, align 8
  %56 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %55, i32 0, i32 0
  store %struct.scatterlist* %54, %struct.scatterlist** %56, align 8
  store i32 0, i32* %3, align 4
  br label %69

57:                                               ; preds = %24
  %58 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %59 = call i32 @PTR_ERR(%struct.ib_mr* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @trace_xprtrdma_frwr_alloc(%struct.rpcrdma_mr* %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %31
  %65 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %66 = call i32 @ib_dereg_mr(%struct.ib_mr* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %57, %32
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.ib_mr* @ib_alloc_mr(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mr*) #1

declare dso_local %struct.scatterlist* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mr*) #1

declare dso_local i32 @trace_xprtrdma_frwr_alloc(%struct.rpcrdma_mr*, i32) #1

declare dso_local i32 @ib_dereg_mr(%struct.ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
