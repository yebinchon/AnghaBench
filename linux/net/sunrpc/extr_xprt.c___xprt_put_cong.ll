; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c___xprt_put_cong.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c___xprt_put_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32 }
%struct.rpc_rqst = type { i64 }

@RPC_CWNDSCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.rpc_rqst*)* @__xprt_put_cong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xprt_put_cong(%struct.rpc_xprt* %0, %struct.rpc_rqst* %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %4, align 8
  %5 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %6 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @RPC_CWNDSCALE, align 8
  %14 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %15 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %21 = call i32 @xprt_test_and_clear_congestion_window_wait(%struct.rpc_xprt* %20)
  %22 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %23 = call i32 @__xprt_lock_write_next_cong(%struct.rpc_xprt* %22)
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @xprt_test_and_clear_congestion_window_wait(%struct.rpc_xprt*) #1

declare dso_local i32 @__xprt_lock_write_next_cong(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
