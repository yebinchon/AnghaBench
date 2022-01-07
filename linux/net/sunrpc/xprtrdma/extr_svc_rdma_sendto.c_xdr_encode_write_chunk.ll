; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_xdr_encode_write_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_xdr_encode_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @xdr_encode_write_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_encode_write_chunk(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %4, align 8
  store i32 %12, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @be32_to_cpup(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %5, align 8
  %19 = load i32, i32* %17, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %64, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  %29 = load i32, i32* %27, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %49

45:                                               ; preds = %26
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cpu_to_be32(i32 %46)
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %54, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  %61 = load i32, i32* %59, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %7, align 4
  br label %23

67:                                               ; preds = %23
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
