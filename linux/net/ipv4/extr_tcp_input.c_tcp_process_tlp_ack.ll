; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_process_tlp_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_process_tlp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64 }

@FLAG_DSACKING_ACK = common dso_local global i32 0, align 4
@TCP_CA_CWR = common dso_local global i32 0, align 4
@LINUX_MIB_TCPLOSSPROBERECOVERY = common dso_local global i32 0, align 4
@FLAG_SND_UNA_ADVANCED = common dso_local global i32 0, align 4
@FLAG_NOT_DUP = common dso_local global i32 0, align 4
@FLAG_DATA_SACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_process_tlp_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_process_tlp_ack(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @before(i32 %10, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %60

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FLAG_DSACKING_ACK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %60

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @after(i32 %26, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @tcp_init_cwnd_reduction(%struct.sock* %33)
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load i32, i32* @TCP_CA_CWR, align 4
  %37 = call i32 @tcp_set_ca_state(%struct.sock* %35, i32 %36)
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = call i32 @tcp_end_cwnd_reduction(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @tcp_try_keep_open(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @sock_net(%struct.sock* %42)
  %44 = load i32, i32* @LINUX_MIB_TCPLOSSPROBERECOVERY, align 4
  %45 = call i32 @NET_INC_STATS(i32 %43, i32 %44)
  br label %59

46:                                               ; preds = %25
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %49 = load i32, i32* @FLAG_NOT_DUP, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FLAG_DATA_SACKED, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %47, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %46
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %16, %59, %22
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @before(i32, i64) #1

declare dso_local i64 @after(i32, i64) #1

declare dso_local i32 @tcp_init_cwnd_reduction(%struct.sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

declare dso_local i32 @tcp_end_cwnd_reduction(%struct.sock*) #1

declare dso_local i32 @tcp_try_keep_open(%struct.sock*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
