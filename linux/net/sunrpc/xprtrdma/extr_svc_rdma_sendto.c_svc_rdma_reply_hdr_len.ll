; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_reply_hdr_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_reply_hdr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpcrdma_fixed_maxsz = common dso_local global i64 0, align 8
@xdr_zero = common dso_local global i64 0, align 8
@rpcrdma_segment_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @svc_rdma_reply_hdr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_reply_hdr_len(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  store i32* %5, i32** %4, align 8
  %6 = load i64, i64* @rpcrdma_fixed_maxsz, align 8
  %7 = add nsw i64 %6, 1
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 %7
  store i32* %9, i32** %4, align 8
  br label %10

10:                                               ; preds = %17, %1
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* %11, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @xdr_zero, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %4, align 8
  %20 = ptrtoint i32* %18 to i32
  %21 = call i32 @be32_to_cpup(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @rpcrdma_segment_maxsz, align 4
  %24 = mul i32 %22, %23
  %25 = load i32*, i32** %4, align 8
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %4, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  %31 = load i32, i32* %29, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @xdr_zero, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %4, align 8
  %38 = ptrtoint i32* %36 to i32
  %39 = call i32 @be32_to_cpup(i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @rpcrdma_segment_maxsz, align 4
  %42 = mul i32 %40, %41
  %43 = load i32*, i32** %4, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %35, %28
  %47 = load i32*, i32** %4, align 8
  %48 = ptrtoint i32* %47 to i64
  %49 = load i32*, i32** %2, align 8
  %50 = ptrtoint i32* %49 to i64
  %51 = sub i64 %48, %50
  %52 = trunc i64 %51 to i32
  ret i32 %52
}

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
