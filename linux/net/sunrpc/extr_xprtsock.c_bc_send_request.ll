; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_bc_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_bc_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.svc_xprt* }
%struct.svc_xprt = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"sending request with xid: %08x\0A\00", align 1
@XPT_DEAD = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*)* @bc_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bc_send_request(%struct.rpc_rqst* %0) #0 {
  %2 = alloca %struct.rpc_rqst*, align 8
  %3 = alloca %struct.svc_xprt*, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %2, align 8
  %5 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @ntohl(i32 %7)
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.svc_xprt*, %struct.svc_xprt** %13, align 8
  store %struct.svc_xprt* %14, %struct.svc_xprt** %3, align 8
  %15 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %16 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @XPT_DEAD, align 4
  %19 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %20 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOTCONN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.rpc_rqst*, %struct.rpc_rqst** %2, align 8
  %28 = call i32 @bc_sendto(%struct.rpc_rqst* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  %31 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bc_sendto(%struct.rpc_rqst*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
