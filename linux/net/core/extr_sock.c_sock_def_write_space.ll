; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_def_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_def_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.socket_wq = type { i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@SOCK_WAKE_SPACE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @sock_def_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_def_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.socket_wq*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 2
  %7 = call i32 @refcount_read(i32* %6)
  %8 = shl i32 %7, 1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.socket_wq* @rcu_dereference(i32 %17)
  store %struct.socket_wq* %18, %struct.socket_wq** %3, align 8
  %19 = load %struct.socket_wq*, %struct.socket_wq** %3, align 8
  %20 = call i64 @skwq_has_sleeper(%struct.socket_wq* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.socket_wq*, %struct.socket_wq** %3, align 8
  %24 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %23, i32 0, i32 0
  %25 = load i32, i32* @EPOLLOUT, align 4
  %26 = load i32, i32* @EPOLLWRNORM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @EPOLLWRBAND, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @wake_up_interruptible_sync_poll(i32* %24, i32 %29)
  br label %31

31:                                               ; preds = %22, %14
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = call i64 @sock_writeable(%struct.sock* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = load i32, i32* @SOCK_WAKE_SPACE, align 4
  %38 = load i32, i32* @POLL_OUT, align 4
  %39 = call i32 @sk_wake_async(%struct.sock* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %40, %1
  %42 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.socket_wq* @rcu_dereference(i32) #1

declare dso_local i64 @skwq_has_sleeper(%struct.socket_wq*) #1

declare dso_local i32 @wake_up_interruptible_sync_poll(i32*, i32) #1

declare dso_local i64 @sock_writeable(%struct.sock*) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
