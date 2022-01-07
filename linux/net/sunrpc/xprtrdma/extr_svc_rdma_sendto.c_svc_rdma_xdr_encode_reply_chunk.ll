; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_xdr_encode_reply_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_xdr_encode_reply_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpcrdma_fixed_maxsz = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i64 0, align 8
@rpcrdma_segment_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @svc_rdma_xdr_encode_reply_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_xdr_encode_reply_chunk(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @rpcrdma_fixed_maxsz, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32* %12, i32** %7, align 8
  br label %13

13:                                               ; preds = %20, %3
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* %14, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @xdr_zero, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @be32_to_cpup(i32* %21)
  %23 = load i32, i32* @rpcrdma_segment_maxsz, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 1, %24
  %26 = load i32*, i32** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %7, align 8
  br label %13

29:                                               ; preds = %13
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @xdr_encode_write_chunk(i32* %30, i32* %31, i32 %32)
  ret void
}

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @xdr_encode_write_chunk(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
