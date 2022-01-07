; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_sendmsg.c_rxrpc_notify_end_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_sendmsg.c_rxrpc_notify_end_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.rxrpc_call = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_sock*, %struct.rxrpc_call*, i32 (i32*, %struct.rxrpc_call*, i32)*)* @rxrpc_notify_end_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_notify_end_tx(%struct.rxrpc_sock* %0, %struct.rxrpc_call* %1, i32 (i32*, %struct.rxrpc_call*, i32)* %2) #0 {
  %4 = alloca %struct.rxrpc_sock*, align 8
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca i32 (i32*, %struct.rxrpc_call*, i32)*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %4, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %5, align 8
  store i32 (i32*, %struct.rxrpc_call*, i32)* %2, i32 (i32*, %struct.rxrpc_call*, i32)** %6, align 8
  %7 = load i32 (i32*, %struct.rxrpc_call*, i32)*, i32 (i32*, %struct.rxrpc_call*, i32)** %6, align 8
  %8 = icmp ne i32 (i32*, %struct.rxrpc_call*, i32)* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i32 (i32*, %struct.rxrpc_call*, i32)*, i32 (i32*, %struct.rxrpc_call*, i32)** %6, align 8
  %11 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %4, align 8
  %12 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %11, i32 0, i32 0
  %13 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %14 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %15 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 %10(i32* %12, %struct.rxrpc_call* %13, i32 %16)
  br label %18

18:                                               ; preds = %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
