; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c___sctp_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c___sctp_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.socket_wq = type { i32 }

@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_WAKE_SPACE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*)* @__sctp_write_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sctp_write_space(%struct.sctp_association* %0) #0 {
  %2 = alloca %struct.sctp_association*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.socket_wq*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %2, align 8
  %5 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %10 = call i64 @sctp_wspace(%struct.sctp_association* %9)
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 0
  %16 = call i64 @waitqueue_active(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 0
  %21 = call i32 @wake_up_interruptible(i32* %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i64 @sctp_writeable(%struct.sock* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.socket_wq* @rcu_dereference(i32 %30)
  store %struct.socket_wq* %31, %struct.socket_wq** %4, align 8
  %32 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %33 = icmp ne %struct.socket_wq* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %26
  %35 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %36 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %35, i32 0, i32 0
  %37 = call i64 @waitqueue_active(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %41 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %40, i32 0, i32 0
  %42 = call i32 @wake_up_interruptible(i32* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SEND_SHUTDOWN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.socket_wq*, %struct.socket_wq** %4, align 8
  %52 = load i32, i32* @SOCK_WAKE_SPACE, align 4
  %53 = load i32, i32* @POLL_OUT, align 4
  %54 = call i32 @sock_wake_async(%struct.socket_wq* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %26
  %57 = call i32 (...) @rcu_read_unlock()
  br label %58

58:                                               ; preds = %12, %56, %22
  ret void
}

declare dso_local i64 @sctp_wspace(%struct.sctp_association*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @sctp_writeable(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.socket_wq* @rcu_dereference(i32) #1

declare dso_local i32 @sock_wake_async(%struct.socket_wq*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
