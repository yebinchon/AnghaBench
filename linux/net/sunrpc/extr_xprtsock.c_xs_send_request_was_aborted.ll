; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_send_request_was_aborted.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_send_request_was_aborted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rpc_rqst = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_xprt*, %struct.rpc_rqst*)* @xs_send_request_was_aborted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_send_request_was_aborted(%struct.sock_xprt* %0, %struct.rpc_rqst* %1) #0 {
  %3 = alloca %struct.sock_xprt*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %3, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %4, align 8
  %5 = load %struct.sock_xprt*, %struct.sock_xprt** %3, align 8
  %6 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
