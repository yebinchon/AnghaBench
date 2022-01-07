; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_is_backchannel_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_svc_rdma_is_backchannel_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32 }

@rdma_msg = common dso_local global i64 0, align 8
@xdr_zero = common dso_local global i64 0, align 8
@RPC_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_xprt*, i64*)* @svc_rdma_is_backchannel_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_is_backchannel_reply(%struct.svc_xprt* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_xprt*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.svc_xprt*, %struct.svc_xprt** %4, align 8
  %8 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 3
  store i64* %14, i64** %6, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %16, i64** %6, align 8
  %17 = load i64, i64* %15, align 8
  %18 = load i64, i64* @rdma_msg, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %58

21:                                               ; preds = %12
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %6, align 8
  %24 = load i64, i64* %22, align 8
  %25 = load i64, i64* @xdr_zero, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %58

28:                                               ; preds = %21
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %6, align 8
  %31 = load i64, i64* %29, align 8
  %32 = load i64, i64* @xdr_zero, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %58

35:                                               ; preds = %28
  %36 = load i64*, i64** %6, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %6, align 8
  %38 = load i64, i64* %36, align 8
  %39 = load i64, i64* @xdr_zero, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %58

42:                                               ; preds = %35
  %43 = load i64*, i64** %6, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %6, align 8
  %45 = load i64, i64* %43, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %58

50:                                               ; preds = %42
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @RPC_CALL, align 4
  %54 = call i64 @cpu_to_be32(i32 %53)
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %49, %41, %34, %27, %20, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
