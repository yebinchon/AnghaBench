; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_get_write_arrays.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_get_write_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpcrdma_fixed_maxsz = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64**, i64**)* @svc_rdma_get_write_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_get_write_arrays(i64* %0, i64** %1, i64** %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64** %1, i64*** %5, align 8
  store i64** %2, i64*** %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i32, i32* @rpcrdma_fixed_maxsz, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  store i64* %11, i64** %7, align 8
  br label %12

12:                                               ; preds = %18, %3
  %13 = load i64*, i64** %7, align 8
  %14 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %14, i64** %7, align 8
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* @xdr_zero, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 5
  store i64* %20, i64** %7, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @xdr_zero, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load i64*, i64** %7, align 8
  %28 = load i64**, i64*** %5, align 8
  store i64* %27, i64** %28, align 8
  br label %29

29:                                               ; preds = %35, %26
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %7, align 8
  %32 = load i64, i64* %30, align 8
  %33 = load i64, i64* @xdr_zero, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @be32_to_cpu(i64 %37)
  %39 = mul nsw i32 %38, 4
  %40 = add nsw i32 1, %39
  %41 = load i64*, i64** %7, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64* %43, i64** %7, align 8
  br label %29

44:                                               ; preds = %29
  br label %49

45:                                               ; preds = %21
  %46 = load i64**, i64*** %5, align 8
  store i64* null, i64** %46, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %7, align 8
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @xdr_zero, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64*, i64** %7, align 8
  %56 = load i64**, i64*** %6, align 8
  store i64* %55, i64** %56, align 8
  br label %59

57:                                               ; preds = %49
  %58 = load i64**, i64*** %6, align 8
  store i64* null, i64** %58, align 8
  br label %59

59:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
