; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_enter_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_enter_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64 }

@LINUX_MIB_TCPRENORECOVERY = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSACKRECOVERY = common dso_local global i32 0, align 4
@TCP_CA_Recovery = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_enter_recovery(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %10 = call i64 @tcp_is_reno(%struct.tcp_sock* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @LINUX_MIB_TCPRENORECOVERY, align 4
  store i32 %13, i32* %6, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @LINUX_MIB_TCPSACKRECOVERY, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @sock_net(%struct.sock* %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @NET_INC_STATS(i32 %18, i32 %19)
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %24 = call i32 @tcp_init_undo(%struct.tcp_sock* %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @tcp_in_cwnd_reduction(%struct.sock* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = call i64 @tcp_current_ssthresh(%struct.sock* %32)
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 @tcp_init_cwnd_reduction(%struct.sock* %37)
  br label %39

39:                                               ; preds = %36, %16
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = load i32, i32* @TCP_CA_Recovery, align 4
  %42 = call i32 @tcp_set_ca_state(%struct.sock* %40, i32 %41)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_init_undo(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_in_cwnd_reduction(%struct.sock*) #1

declare dso_local i64 @tcp_current_ssthresh(%struct.sock*) #1

declare dso_local i32 @tcp_init_cwnd_reduction(%struct.sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
