; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_delack_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_delack_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_connection_sock = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sock }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }

@icsk_delack_timer = common dso_local global i32 0, align 4
@LINUX_MIB_DELAYEDACKLOCKED = common dso_local global i32 0, align 4
@TCP_DELACK_TIMER_DEFERRED = common dso_local global i32 0, align 4
@icsk = common dso_local global %struct.inet_connection_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tcp_delack_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_delack_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %6 = ptrtoint %struct.inet_connection_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @icsk_delack_timer, align 4
  %9 = call %struct.inet_connection_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %3, align 8
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.sock* %12, %struct.sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @bh_lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @sock_owned_by_user(%struct.sock* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i32 @tcp_delack_timer_handler(%struct.sock* %19)
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %23 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @sock_net(%struct.sock* %25)
  %27 = load i32, i32* @LINUX_MIB_DELAYEDACKLOCKED, align 4
  %28 = call i32 @__NET_INC_STATS(i32 %26, i32 %27)
  %29 = load i32, i32* @TCP_DELACK_TIMER_DEFERRED, align 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = call i32 @test_and_set_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @sock_hold(%struct.sock* %35)
  br label %37

37:                                               ; preds = %34, %21
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @bh_unlock_sock(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @sock_put(%struct.sock* %41)
  ret void
}

declare dso_local %struct.inet_connection_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @tcp_delack_timer_handler(%struct.sock*) #1

declare dso_local i32 @__NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
