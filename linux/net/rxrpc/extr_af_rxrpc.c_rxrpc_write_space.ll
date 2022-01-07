; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.socket_wq = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@SOCK_WAKE_SPACE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @rxrpc_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.socket_wq*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.sock* %4)
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call i64 @rxrpc_writable(%struct.sock* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.socket_wq* @rcu_dereference(i32 %13)
  store %struct.socket_wq* %14, %struct.socket_wq** %3, align 8
  %15 = load %struct.socket_wq*, %struct.socket_wq** %3, align 8
  %16 = call i64 @skwq_has_sleeper(%struct.socket_wq* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.socket_wq*, %struct.socket_wq** %3, align 8
  %20 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %19, i32 0, i32 0
  %21 = call i32 @wake_up_interruptible(i32* %20)
  br label %22

22:                                               ; preds = %18, %10
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = load i32, i32* @SOCK_WAKE_SPACE, align 4
  %25 = load i32, i32* @POLL_OUT, align 4
  %26 = call i32 @sk_wake_async(%struct.sock* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @rxrpc_writable(%struct.sock*) #1

declare dso_local %struct.socket_wq* @rcu_dereference(i32) #1

declare dso_local i64 @skwq_has_sleeper(%struct.socket_wq*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
