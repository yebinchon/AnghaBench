; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_recycle.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_frwr_ops.c_frwr_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_req = type { i32 }
%struct.rpcrdma_mr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frwr_recycle(%struct.rpcrdma_req* %0) #0 {
  %2 = alloca %struct.rpcrdma_req*, align 8
  %3 = alloca %struct.rpcrdma_mr*, align 8
  store %struct.rpcrdma_req* %0, %struct.rpcrdma_req** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %2, align 8
  %6 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %5, i32 0, i32 0
  %7 = call %struct.rpcrdma_mr* @rpcrdma_mr_pop(i32* %6)
  store %struct.rpcrdma_mr* %7, %struct.rpcrdma_mr** %3, align 8
  %8 = icmp ne %struct.rpcrdma_mr* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %3, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %3, align 8
  %14 = call i32 @frwr_mr_recycle(i32 %12, %struct.rpcrdma_mr* %13)
  br label %4

15:                                               ; preds = %4
  ret void
}

declare dso_local %struct.rpcrdma_mr* @rpcrdma_mr_pop(i32*) #1

declare dso_local i32 @frwr_mr_recycle(i32, %struct.rpcrdma_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
