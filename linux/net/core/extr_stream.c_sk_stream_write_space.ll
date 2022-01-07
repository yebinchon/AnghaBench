; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_stream.c_sk_stream_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_stream.c_sk_stream_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.socket_wq = type { i64, i32 }

@SOCK_NOSPACE = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLWRBAND = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_WAKE_SPACE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_stream_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket_wq*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 2
  %7 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %7, %struct.socket** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i64 @__sk_stream_is_writeable(%struct.sock* %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %1
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = icmp ne %struct.socket* %12, null
  br i1 %13, label %14, label %58

14:                                               ; preds = %11
  %15 = load i32, i32* @SOCK_NOSPACE, align 4
  %16 = load %struct.socket*, %struct.socket** %3, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.socket_wq* @rcu_dereference(i32 %22)
  store %struct.socket_wq* %23, %struct.socket_wq** %4, align 8
  %24 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %25 = call i64 @skwq_has_sleeper(%struct.socket_wq* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %14
  %28 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %29 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %28, i32 0, i32 1
  %30 = load i32, i32* @EPOLLOUT, align 4
  %31 = load i32, i32* @EPOLLWRNORM, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @EPOLLWRBAND, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @wake_up_interruptible_poll(i32* %29, i32 %34)
  br label %36

36:                                               ; preds = %27, %14
  %37 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %38 = icmp ne %struct.socket_wq* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %41 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SEND_SHUTDOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %53 = load i32, i32* @SOCK_WAKE_SPACE, align 4
  %54 = load i32, i32* @POLL_OUT, align 4
  %55 = call i32 @sock_wake_async(%struct.socket_wq* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %44, %39, %36
  %57 = call i32 (...) @rcu_read_unlock()
  br label %58

58:                                               ; preds = %56, %11, %1
  ret void
}

declare dso_local i64 @__sk_stream_is_writeable(%struct.sock*, i32) #1

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
