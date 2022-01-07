; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_xdr_check_read_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_xdr_check_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xdr_zero = common dso_local global i64 0, align 8
@MAX_BYTES_SPECIAL_SEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @xdr_check_read_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_check_read_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* %9, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @xdr_zero, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  %21 = ptrtoint i32* %19 to i32
  %22 = call i64 @be32_to_cpup(i32 %21)
  store i64 %22, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %32

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %4, align 8
  %26 = ptrtoint i32* %24 to i32
  %27 = call i64 @be32_to_cpup(i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32* null, i32** %3, align 8
  br label %52

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  %37 = ptrtoint i32* %35 to i32
  %38 = call i64 @be32_to_cpup(i32 %37)
  %39 = load i64, i64* @MAX_BYTES_SPECIAL_SEG, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32* null, i32** %3, align 8
  br label %52

42:                                               ; preds = %32
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ugt i32* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32* null, i32** %3, align 8
  br label %52

49:                                               ; preds = %42
  br label %8

50:                                               ; preds = %8
  %51 = load i32*, i32** %4, align 8
  store i32* %51, i32** %3, align 8
  br label %52

52:                                               ; preds = %50, %48, %41, %30
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i64 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
