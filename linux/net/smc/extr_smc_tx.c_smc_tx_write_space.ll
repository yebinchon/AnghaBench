; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smc_tx_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smc_tx_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.smc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.socket_wq = type { i64, i32 }

@SOCK_NOSPACE = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_WAKE_SPACE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @smc_tx_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_tx_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.smc_sock*, align 8
  %5 = alloca %struct.socket_wq*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 2
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.smc_sock* @smc_sk(%struct.sock* %9)
  store %struct.smc_sock* %10, %struct.smc_sock** %4, align 8
  %11 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %12 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %1
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = icmp ne %struct.socket* %17, null
  br i1 %18, label %19, label %63

19:                                               ; preds = %16
  %20 = load i32, i32* @SOCK_NOSPACE, align 4
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.socket_wq* @rcu_dereference(i32 %27)
  store %struct.socket_wq* %28, %struct.socket_wq** %5, align 8
  %29 = load %struct.socket_wq*, %struct.socket_wq** %5, align 8
  %30 = call i64 @skwq_has_sleeper(%struct.socket_wq* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load %struct.socket_wq*, %struct.socket_wq** %5, align 8
  %34 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %33, i32 0, i32 1
  %35 = load i32, i32* @EPOLLOUT, align 4
  %36 = load i32, i32* @EPOLLWRNORM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @EPOLLWRBAND, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @wake_up_interruptible_poll(i32* %34, i32 %39)
  br label %41

41:                                               ; preds = %32, %19
  %42 = load %struct.socket_wq*, %struct.socket_wq** %5, align 8
  %43 = icmp ne %struct.socket_wq* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load %struct.socket_wq*, %struct.socket_wq** %5, align 8
  %46 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SEND_SHUTDOWN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load %struct.socket_wq*, %struct.socket_wq** %5, align 8
  %58 = load i32, i32* @SOCK_WAKE_SPACE, align 4
  %59 = load i32, i32* @POLL_OUT, align 4
  %60 = call i32 @sock_wake_async(%struct.socket_wq* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %49, %44, %41
  %62 = call i32 (...) @rcu_read_unlock()
  br label %63

63:                                               ; preds = %61, %16, %1
  ret void
}

declare dso_local %struct.smc_sock* @smc_sk(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.socket_wq* @rcu_dereference(i32) #1

declare dso_local i64 @skwq_has_sleeper(%struct.socket_wq*) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

declare dso_local i32 @sock_wake_async(%struct.socket_wq*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
