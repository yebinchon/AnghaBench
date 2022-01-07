; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c___frwr_release_mr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c___frwr_release_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wc = type { i64 }
%struct.rpcrdma_mr = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_wc*, %struct.rpcrdma_mr*)* @__frwr_release_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__frwr_release_mr(%struct.ib_wc* %0, %struct.rpcrdma_mr* %1) #0 {
  %3 = alloca %struct.ib_wc*, align 8
  %4 = alloca %struct.rpcrdma_mr*, align 8
  store %struct.ib_wc* %0, %struct.ib_wc** %3, align 8
  store %struct.rpcrdma_mr* %1, %struct.rpcrdma_mr** %4, align 8
  %5 = load %struct.ib_wc*, %struct.ib_wc** %3, align 8
  %6 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IB_WC_SUCCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %12 = call i32 @rpcrdma_mr_recycle(%struct.rpcrdma_mr* %11)
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %4, align 8
  %15 = call i32 @rpcrdma_mr_put(%struct.rpcrdma_mr* %14)
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @rpcrdma_mr_recycle(%struct.rpcrdma_mr*) #1

declare dso_local i32 @rpcrdma_mr_put(%struct.rpcrdma_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
