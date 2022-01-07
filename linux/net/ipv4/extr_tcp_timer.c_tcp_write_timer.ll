; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_write_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_write_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_connection_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }

@icsk_retransmit_timer = common dso_local global i32 0, align 4
@TCP_WRITE_TIMER_DEFERRED = common dso_local global i32 0, align 4
@icsk = common dso_local global %struct.inet_connection_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tcp_write_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_write_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %6 = ptrtoint %struct.inet_connection_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @icsk_retransmit_timer, align 4
  %9 = call %struct.inet_connection_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.inet_connection_sock* %9, %struct.inet_connection_sock** %3, align 8
  %10 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %11 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.sock* %12, %struct.sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @bh_lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @sock_owned_by_user(%struct.sock* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i32 @tcp_write_timer_handler(%struct.sock* %19)
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @TCP_WRITE_TIMER_DEFERRED, align 4
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = call i32 @test_and_set_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @sock_hold(%struct.sock* %28)
  br label %30

30:                                               ; preds = %27, %21
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @bh_unlock_sock(%struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i32 @sock_put(%struct.sock* %34)
  ret void
}

declare dso_local %struct.inet_connection_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @tcp_write_timer_handler(%struct.sock*) #1

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
