; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_lookup_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_lookup_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32 }
%struct.rpc_xprt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"RPC:       xprt_lookup_rqst did not find xid %08x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_rqst* @xprt_lookup_rqst(%struct.rpc_xprt* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.rpc_rqst* @xprt_request_rb_find(%struct.rpc_xprt* %7, i32 %8)
  store %struct.rpc_rqst* %9, %struct.rpc_rqst** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %11 = icmp ne %struct.rpc_rqst* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @trace_xprt_lookup_rqst(%struct.rpc_xprt* %13, i32 %14, i32 0)
  %16 = call i32 (...) @ktime_get()
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %18 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ktime_sub(i32 %16, i32 %19)
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  %22 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  store %struct.rpc_rqst* %23, %struct.rpc_rqst** %3, align 8
  br label %38

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @trace_xprt_lookup_rqst(%struct.rpc_xprt* %28, i32 %29, i32 %31)
  %33 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  store %struct.rpc_rqst* null, %struct.rpc_rqst** %3, align 8
  br label %38

38:                                               ; preds = %24, %12
  %39 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  ret %struct.rpc_rqst* %39
}

declare dso_local %struct.rpc_rqst* @xprt_request_rb_find(%struct.rpc_xprt*, i32) #1

declare dso_local i32 @trace_xprt_lookup_rqst(%struct.rpc_xprt*, i32, i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
