; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)*, i32 }
%struct.request_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TCP_SYN_SENT = common dso_local global i64 0, align 8
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@TCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_done(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.TYPE_2__* @tcp_sk(%struct.sock* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.request_sock* @rcu_dereference_protected(i32 %7, i32 1)
  store %struct.request_sock* %8, %struct.request_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_SYN_SENT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TCP_SYN_RECV, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %1
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = call i32 @sock_net(%struct.sock* %21)
  %23 = load i32, i32* @TCP_MIB_ATTEMPTFAILS, align 4
  %24 = call i32 @TCP_INC_STATS(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = load i32, i32* @TCP_CLOSE, align 4
  %28 = call i32 @tcp_set_state(%struct.sock* %26, i32 %27)
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @tcp_clear_xmit_timers(%struct.sock* %29)
  %31 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %32 = icmp ne %struct.request_sock* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = load %struct.request_sock*, %struct.request_sock** %3, align 8
  %36 = call i32 @reqsk_fastopen_remove(%struct.sock* %34, %struct.request_sock* %35, i32 0)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* @SHUTDOWN_MASK, align 4
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = load i32, i32* @SOCK_DEAD, align 4
  %43 = call i32 @sock_flag(%struct.sock* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  %48 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %47, align 8
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = call i32 %48(%struct.sock* %49)
  br label %54

51:                                               ; preds = %37
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = call i32 @inet_csk_destroy_sock(%struct.sock* %52)
  br label %54

54:                                               ; preds = %51, %45
  ret void
}

declare dso_local %struct.request_sock* @rcu_dereference_protected(i32, i32) #1

declare dso_local %struct.TYPE_2__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @TCP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @tcp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @reqsk_fastopen_remove(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
