; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_event_ack_sent.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_event_ack_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i32 }

@TCP_FASTRETRANS_THRESH = common dso_local global i64 0, align 8
@LINUX_MIB_TCPACKCOMPRESSED = common dso_local global i32 0, align 4
@ICSK_TIME_DACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i64)* @tcp_event_ack_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_event_ack_sent(%struct.sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %7, align 8
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TCP_FASTRETRANS_THRESH, align 8
  %14 = icmp sgt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i32 @sock_net(%struct.sock* %19)
  %21 = load i32, i32* @LINUX_MIB_TCPACKCOMPRESSED, align 4
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TCP_FASTRETRANS_THRESH, align 8
  %26 = sub nsw i64 %24, %25
  %27 = call i32 @NET_ADD_STATS(i32 %20, i32 %21, i64 %26)
  %28 = load i64, i64* @TCP_FASTRETRANS_THRESH, align 8
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %31, i32 0, i32 2
  %33 = call i32 @hrtimer_try_to_cancel(i32* %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i32 @__sock_put(%struct.sock* %36)
  br label %38

38:                                               ; preds = %35, %18
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %56

49:                                               ; preds = %39
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @tcp_dec_quickack_mode(%struct.sock* %50, i32 %51)
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = load i32, i32* @ICSK_TIME_DACK, align 4
  %55 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %48
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NET_ADD_STATS(i32, i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @hrtimer_try_to_cancel(i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

declare dso_local i32 @tcp_dec_quickack_mode(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_clear_xmit_timer(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
