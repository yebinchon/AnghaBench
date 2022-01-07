; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_rep_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_rep_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_rep = type { i32, %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.rpcrdma_xprt*, i32 }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@rpcrdma_wc_receive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpcrdma_rep* (%struct.rpcrdma_xprt*, i32)* @rpcrdma_rep_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpcrdma_rep* @rpcrdma_rep_create(%struct.rpcrdma_xprt* %0, i32 %1) #0 {
  %3 = alloca %struct.rpcrdma_rep*, align 8
  %4 = alloca %struct.rpcrdma_xprt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpcrdma_rep*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rpcrdma_rep* @kzalloc(i32 72, i32 %7)
  store %struct.rpcrdma_rep* %8, %struct.rpcrdma_rep** %6, align 8
  %9 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %10 = icmp eq %struct.rpcrdma_rep* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %71

12:                                               ; preds = %2
  %13 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_10__* @rpcrdma_regbuf_alloc(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %21 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %20, i32 0, i32 2
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %21, align 8
  %22 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %23 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  br label %68

27:                                               ; preds = %12
  %28 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %29 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %28, i32 0, i32 5
  %30 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %31 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = call i32 @rdmab_data(%struct.TYPE_10__* %32)
  %34 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %34, i32 0, i32 2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = call i32 @rdmab_length(%struct.TYPE_10__* %36)
  %38 = call i32 @xdr_buf_init(i32* %29, i32 %33, i32 %37)
  %39 = load i32, i32* @rpcrdma_wc_receive, align 4
  %40 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %41 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %4, align 8
  %44 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %45 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %44, i32 0, i32 4
  store %struct.rpcrdma_xprt* %43, %struct.rpcrdma_xprt** %45, align 8
  %46 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %47 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %50 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %49, i32 0, i32 3
  %51 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %52 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %55 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %59 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32* %57, i32** %60, align 8
  %61 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %62 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %66 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  store %struct.rpcrdma_rep* %67, %struct.rpcrdma_rep** %3, align 8
  br label %72

68:                                               ; preds = %26
  %69 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %70 = call i32 @kfree(%struct.rpcrdma_rep* %69)
  br label %71

71:                                               ; preds = %68, %11
  store %struct.rpcrdma_rep* null, %struct.rpcrdma_rep** %3, align 8
  br label %72

72:                                               ; preds = %71, %27
  %73 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %3, align 8
  ret %struct.rpcrdma_rep* %73
}

declare dso_local %struct.rpcrdma_rep* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @rpcrdma_regbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @xdr_buf_init(i32*, i32, i32) #1

declare dso_local i32 @rdmab_data(%struct.TYPE_10__*) #1

declare dso_local i32 @rdmab_length(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.rpcrdma_rep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
