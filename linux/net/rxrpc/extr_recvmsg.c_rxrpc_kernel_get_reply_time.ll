; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_kernel_get_reply_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_recvmsg.c_rxrpc_kernel_get_reply_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rxrpc_call = type { i64, i32, %struct.sk_buff**, i32, i32 }
%struct.sk_buff = type { i32 }

@RXRPC_CALL_CLIENT_RECV_REPLY = common dso_local global i64 0, align 8
@RXRPC_RXTX_BUFF_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxrpc_kernel_get_reply_time(%struct.socket* %0, %struct.rxrpc_call* %1, i32* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %16 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @READ_ONCE(i32 %17)
  %19 = load i64, i64* @RXRPC_CALL_CLIENT_RECV_REPLY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %56

22:                                               ; preds = %3
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %24 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %56

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %10, align 8
  %32 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %33 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %32, i32 0, i32 3
  %34 = call i64 @smp_load_acquire(i32* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @after(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %56

40:                                               ; preds = %29
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %42 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %41, i32 0, i32 2
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @RXRPC_RXTX_BUFF_MASK, align 8
  %46 = and i64 %44, %45
  %47 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %43, i64 %46
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %56

52:                                               ; preds = %40
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @skb_get_ktime(%struct.sk_buff* %53)
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %51, %39, %28, %21
  %57 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %58 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @smp_load_acquire(i32*) #1

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @skb_get_ktime(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
