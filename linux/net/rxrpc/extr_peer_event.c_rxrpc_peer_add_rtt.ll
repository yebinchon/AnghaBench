; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_event.c_rxrpc_peer_add_rtt.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_peer_event.c_rxrpc_peer_add_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.rxrpc_peer* }
%struct.rxrpc_peer = type { i32, i64, i64, i32, i32, i64* }

@RXRPC_RTT_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_peer_add_rtt(%struct.rxrpc_call* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rxrpc_call*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rxrpc_peer*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %20 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %19, i32 0, i32 0
  %21 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %20, align 8
  store %struct.rxrpc_peer* %21, %struct.rxrpc_peer** %13, align 8
  %22 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %23 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %26 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %17, align 8
  %28 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %29 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %18, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @ktime_sub(i32 %31, i32 %32)
  %34 = call i64 @ktime_to_ns(i32 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  br label %113

38:                                               ; preds = %6
  %39 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %40 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %39, i32 0, i32 4
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %43 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %42, i32 0, i32 5
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %17, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %15, align 4
  %57 = load i64, i64* %14, align 8
  %58 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %59 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %58, i32 0, i32 5
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %17, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 %57, i64* %62, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add i64 %63, 1
  %65 = load i32, i32* @RXRPC_RTT_CACHE_SIZE, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = and i64 %64, %67
  %69 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %70 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %73 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %18, align 8
  %75 = load i32, i32* @RXRPC_RTT_CACHE_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %38
  %79 = load i64, i64* %18, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %18, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %83 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %38
  %85 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %86 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %85, i32 0, i32 4
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load i64, i64* %18, align 8
  %89 = load i32, i32* @RXRPC_RTT_CACHE_SIZE, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @RXRPC_RTT_CACHE_SIZE, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %16, align 4
  br label %101

96:                                               ; preds = %84
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i64, i64* %18, align 8
  %100 = call i32 @do_div(i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %92
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %13, align 8
  %104 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %18, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @trace_rxrpc_rtt_rx(%struct.rxrpc_call* %105, i32 %106, i32 %107, i32 %108, i64 %109, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %101, %37
  ret void
}

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @trace_rxrpc_rtt_rx(%struct.rxrpc_call*, i32, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
