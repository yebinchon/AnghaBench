; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_request_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rpc_rqst*)* @xprt_request_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xprt_request_timeout(%struct.rpc_rqst* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca i64, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %5, %8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @time_before(i64 %10, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %2, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = load i64, i64* %2, align 8
  ret i64 %23
}

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
