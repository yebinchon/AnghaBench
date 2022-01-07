; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_timer.c_rpc_update_rtt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_timer.c_rpc_update_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rtt = type { i32*, i32* }

@RPC_RTO_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_update_rtt(%struct.rpc_rtt* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rpc_rtt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.rpc_rtt* %0, %struct.rpc_rtt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %5, align 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %67

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %67

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 1, i64* %6, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.rpc_rtt*, %struct.rpc_rtt** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to i64*
  store i64* %28, i64** %7, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = ashr i64 %30, 3
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i64, i64* %6, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %40, %21
  %44 = load %struct.rpc_rtt*, %struct.rpc_rtt** %4, align 8
  %45 = getelementptr inbounds %struct.rpc_rtt, %struct.rpc_rtt* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to i64*
  store i64* %50, i64** %8, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = ashr i64 %52, 2
  %54 = load i64, i64* %6, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RPC_RTO_MIN, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = load i64, i64* @RPC_RTO_MIN, align 8
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %12, %16, %64, %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
