; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_recvmsg_new_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_recvmsg_new_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32, i32, i32 }
%struct.rxrpc_call = type { i32, i32 }
%struct.msghdr = type { i32 }

@SOL_RXRPC = common dso_local global i32 0, align 4
@RXRPC_NEW_CALL = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"to be accepted\00", align 1
@rxrpc_call_got = common dso_local global i32 0, align 4
@rxrpc_recvmsg_to_be_accepted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_sock*, %struct.rxrpc_call*, %struct.msghdr*, i32)* @rxrpc_recvmsg_new_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_recvmsg_new_call(%struct.rxrpc_sock* %0, %struct.rxrpc_call* %1, %struct.msghdr* %2, i32 %3) #0 {
  %5 = alloca %struct.rxrpc_sock*, align 8
  %6 = alloca %struct.rxrpc_call*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %5, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %12 = load i32, i32* @SOL_RXRPC, align 4
  %13 = load i32, i32* @RXRPC_NEW_CALL, align 4
  %14 = call i32 @put_cmsg(%struct.msghdr* %11, i32 %12, i32 %13, i32 0, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MSG_PEEK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %17
  %23 = call i32 @_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %25 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %24, i32 0, i32 2
  %26 = call i32 @write_lock_bh(i32* %25)
  %27 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %28 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %27, i32 0, i32 1
  %29 = call i32 @list_del_init(i32* %28)
  %30 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %31 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %30, i32 0, i32 2
  %32 = call i32 @write_unlock_bh(i32* %31)
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %34 = load i32, i32* @rxrpc_call_got, align 4
  %35 = call i32 @rxrpc_get_call(%struct.rxrpc_call* %33, i32 %34)
  %36 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %37 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %36, i32 0, i32 0
  %38 = call i32 @write_lock(i32* %37)
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %40 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %39, i32 0, i32 0
  %41 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %42 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %41, i32 0, i32 1
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  %44 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %5, align 8
  %45 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %44, i32 0, i32 0
  %46 = call i32 @write_unlock(i32* %45)
  br label %47

47:                                               ; preds = %22, %17, %4
  %48 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %49 = load i32, i32* @rxrpc_recvmsg_to_be_accepted, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @trace_rxrpc_recvmsg(%struct.rxrpc_call* %48, i32 %49, i32 1, i32 0, i32 0, i32 %50)
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i32*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @rxrpc_get_call(%struct.rxrpc_call*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @trace_rxrpc_recvmsg(%struct.rxrpc_call*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
