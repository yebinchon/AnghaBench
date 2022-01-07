; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_regbuf_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_regbuf_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_regbuf = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpcrdma_regbuf*)* @rpcrdma_regbuf_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcrdma_regbuf_dma_unmap(%struct.rpcrdma_regbuf* %0) #0 {
  %2 = alloca %struct.rpcrdma_regbuf*, align 8
  store %struct.rpcrdma_regbuf* %0, %struct.rpcrdma_regbuf** %2, align 8
  %3 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %2, align 8
  %4 = icmp ne %struct.rpcrdma_regbuf* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %2, align 8
  %8 = call i32 @rpcrdma_regbuf_is_mapped(%struct.rpcrdma_regbuf* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %25

11:                                               ; preds = %6
  %12 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %2, align 8
  %13 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %2, align 8
  %16 = call i32 @rdmab_addr(%struct.rpcrdma_regbuf* %15)
  %17 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %2, align 8
  %18 = call i32 @rdmab_length(%struct.rpcrdma_regbuf* %17)
  %19 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %2, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ib_dma_unmap_single(i32* %14, i32 %16, i32 %18, i32 %21)
  %23 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %2, align 8
  %24 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %11, %10, %5
  ret void
}

declare dso_local i32 @rpcrdma_regbuf_is_mapped(%struct.rpcrdma_regbuf*) #1

declare dso_local i32 @ib_dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @rdmab_addr(%struct.rpcrdma_regbuf*) #1

declare dso_local i32 @rdmab_length(%struct.rpcrdma_regbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
