; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_regbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_regbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_regbuf = type { i32, %struct.TYPE_2__, i32*, i8* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpcrdma_regbuf* (i64, i32, i32)* @rpcrdma_regbuf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpcrdma_regbuf* @rpcrdma_regbuf_alloc(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rpcrdma_regbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpcrdma_regbuf*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i8* @kmalloc(i64 32, i32 %9)
  %11 = bitcast i8* %10 to %struct.rpcrdma_regbuf*
  store %struct.rpcrdma_regbuf* %11, %struct.rpcrdma_regbuf** %8, align 8
  %12 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %8, align 8
  %13 = icmp ne %struct.rpcrdma_regbuf* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.rpcrdma_regbuf* null, %struct.rpcrdma_regbuf** %4, align 8
  br label %39

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @kmalloc(i64 %16, i32 %17)
  %19 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %8, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %8, align 8
  %22 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %8, align 8
  %27 = call i32 @kfree(%struct.rpcrdma_regbuf* %26)
  store %struct.rpcrdma_regbuf* null, %struct.rpcrdma_regbuf** %4, align 8
  br label %39

28:                                               ; preds = %15
  %29 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %8, align 8
  %30 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %8, align 8
  %33 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %8, align 8
  %36 = getelementptr inbounds %struct.rpcrdma_regbuf, %struct.rpcrdma_regbuf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %8, align 8
  store %struct.rpcrdma_regbuf* %38, %struct.rpcrdma_regbuf** %4, align 8
  br label %39

39:                                               ; preds = %28, %25, %14
  %40 = load %struct.rpcrdma_regbuf*, %struct.rpcrdma_regbuf** %4, align 8
  ret %struct.rpcrdma_regbuf* %40
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.rpcrdma_regbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
