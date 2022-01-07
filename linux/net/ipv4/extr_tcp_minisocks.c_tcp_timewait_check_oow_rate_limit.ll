; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_timewait_check_oow_rate_limit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_timewait_check_oow_rate_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_timewait_sock = type { i32 }
%struct.sock = type { i32 }

@TCP_TW_ACK = common dso_local global i32 0, align 4
@TCP_TW_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_timewait_sock*, %struct.sk_buff*, i32)* @tcp_timewait_check_oow_rate_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_timewait_check_oow_rate_limit(%struct.inet_timewait_sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_timewait_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcp_timewait_sock*, align 8
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %10 = bitcast %struct.inet_timewait_sock* %9 to %struct.sock*
  %11 = call %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock* %10)
  store %struct.tcp_timewait_sock* %11, %struct.tcp_timewait_sock** %8, align 8
  %12 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %13 = call i32 @twsk_net(%struct.inet_timewait_sock* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %8, align 8
  %17 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %16, i32 0, i32 0
  %18 = call i32 @tcp_oow_rate_limited(i32 %13, %struct.sk_buff* %14, i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @TCP_TW_ACK, align 4
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %24 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %23)
  %25 = load i32, i32* @TCP_TW_SUCCESS, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock*) #1

declare dso_local i32 @tcp_oow_rate_limited(i32, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @twsk_net(%struct.inet_timewait_sock*) #1

declare dso_local i32 @inet_twsk_put(%struct.inet_timewait_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
