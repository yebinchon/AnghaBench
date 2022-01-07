; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_pull_up_needed.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_pull_up_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.xdr_buf = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svcxprt_rdma*, %struct.xdr_buf*, i32*)* @svc_rdma_pull_up_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_pull_up_needed(%struct.svcxprt_rdma* %0, %struct.xdr_buf* %1, i32* %2) #0 {
  %4 = alloca %struct.svcxprt_rdma*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %4, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %3
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %14 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  store i64 %18, i64* %9, align 8
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %20 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %25, %12
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @u32, align 4
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub i64 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @min_t(i32 %28, i64 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %22

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %41 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %53 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %51, %54
  %56 = zext i1 %55 to i32
  ret i32 %56
}

declare dso_local i64 @min_t(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
