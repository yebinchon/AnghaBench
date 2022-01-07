; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_send_challenge_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_send_challenge_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@tcp_send_challenge_ack.challenge_timestamp = internal global i32 0, align 4
@tcp_send_challenge_ack.challenge_count = internal global i32 0, align 4
@LINUX_MIB_TCPACKSKIPPEDCHALLENGE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@LINUX_MIB_TCPCHALLENGEACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_send_challenge_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_send_challenge_ack(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.net* @sock_net(%struct.sock* %13)
  store %struct.net* %14, %struct.net** %6, align 8
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = load i32, i32* @LINUX_MIB_TCPACKSKIPPEDCHALLENGE, align 4
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 0
  %19 = call i64 @__tcp_oow_rate_limited(%struct.net* %15, i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %59

22:                                               ; preds = %2
  %23 = load i32, i32* @jiffies, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @tcp_send_challenge_ack.challenge_timestamp, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = getelementptr inbounds %struct.net, %struct.net* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* @tcp_send_challenge_ack.challenge_timestamp, align 4
  %38 = load i32, i32* @tcp_send_challenge_ack.challenge_count, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @prandom_u32_max(i32 %40)
  %42 = add nsw i32 %39, %41
  %43 = call i32 @WRITE_ONCE(i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %29, %22
  %45 = load i32, i32* @tcp_send_challenge_ack.challenge_count, align 4
  %46 = call i32 @READ_ONCE(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32, i32* @tcp_send_challenge_ack.challenge_count, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @WRITE_ONCE(i32 %50, i32 %52)
  %54 = load %struct.net*, %struct.net** %6, align 8
  %55 = load i32, i32* @LINUX_MIB_TCPCHALLENGEACK, align 4
  %56 = call i32 @NET_INC_STATS(%struct.net* %54, i32 %55)
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call i32 @tcp_send_ack(%struct.sock* %57)
  br label %59

59:                                               ; preds = %21, %49, %44
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i64 @__tcp_oow_rate_limited(%struct.net*, i32, i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @prandom_u32_max(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @NET_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @tcp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
