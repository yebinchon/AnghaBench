; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_recvmsg_term.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_recvmsg_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.msghdr = type { i32 }

@SOL_RXRPC = common dso_local global i32 0, align 4
@RXRPC_ACK = common dso_local global i32 0, align 4
@RXRPC_ABORT = common dso_local global i32 0, align 4
@RXRPC_NET_ERROR = common dso_local global i32 0, align 4
@RXRPC_LOCAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid terminal call state %u\0A\00", align 1
@rxrpc_recvmsg_terminal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.msghdr*)* @rxrpc_recvmsg_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_recvmsg_term(%struct.rxrpc_call* %0, %struct.msghdr* %1) #0 {
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %8 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %54 [
    i32 128, label %10
    i32 129, label %20
    i32 132, label %28
    i32 130, label %36
    i32 131, label %45
  ]

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %11 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %12 = call i32 @rxrpc_is_service_call(%struct.rxrpc_call* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %16 = load i32, i32* @SOL_RXRPC, align 4
  %17 = load i32, i32* @RXRPC_ACK, align 4
  %18 = call i32 @put_cmsg(%struct.msghdr* %15, i32 %16, i32 %17, i32 0, i32* %5)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %14, %10
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %25 = load i32, i32* @SOL_RXRPC, align 4
  %26 = load i32, i32* @RXRPC_ABORT, align 4
  %27 = call i32 @put_cmsg(%struct.msghdr* %24, i32 %25, i32 %26, i32 4, i32* %5)
  store i32 %27, i32* %6, align 4
  br label %60

28:                                               ; preds = %2
  %29 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %30 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %33 = load i32, i32* @SOL_RXRPC, align 4
  %34 = load i32, i32* @RXRPC_ABORT, align 4
  %35 = call i32 @put_cmsg(%struct.msghdr* %32, i32 %33, i32 %34, i32 4, i32* %5)
  store i32 %35, i32* %6, align 4
  br label %60

36:                                               ; preds = %2
  %37 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %38 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  %41 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %42 = load i32, i32* @SOL_RXRPC, align 4
  %43 = load i32, i32* @RXRPC_NET_ERROR, align 4
  %44 = call i32 @put_cmsg(%struct.msghdr* %41, i32 %42, i32 %43, i32 4, i32* %5)
  store i32 %44, i32* %6, align 4
  br label %60

45:                                               ; preds = %2
  %46 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %47 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %51 = load i32, i32* @SOL_RXRPC, align 4
  %52 = load i32, i32* @RXRPC_LOCAL_ERROR, align 4
  %53 = call i32 @put_cmsg(%struct.msghdr* %50, i32 %51, i32 %52, i32 4, i32* %5)
  store i32 %53, i32* %6, align 4
  br label %60

54:                                               ; preds = %2
  %55 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %56 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = call i32 (...) @BUG()
  br label %60

60:                                               ; preds = %54, %45, %36, %28, %20, %19
  %61 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %62 = load i32, i32* @rxrpc_recvmsg_terminal, align 4
  %63 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %64 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %67 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %70 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @trace_rxrpc_recvmsg(%struct.rxrpc_call* %61, i32 %62, i32 %65, i32 %68, i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @rxrpc_is_service_call(%struct.rxrpc_call*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @trace_rxrpc_recvmsg(%struct.rxrpc_call*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
