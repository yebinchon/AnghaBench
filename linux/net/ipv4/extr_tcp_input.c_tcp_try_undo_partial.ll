; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_undo_partial.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_undo_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"partial recovery\00", align 1
@LINUX_MIB_TCPPARTIALUNDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @tcp_try_undo_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_undo_partial(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %6, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %15 = call i64 @tcp_packet_delayed(%struct.tcp_sock* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @tcp_check_sack_reordering(%struct.sock* %18, i32 %19, i32 1)
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @tcp_any_retrans_done(%struct.sock* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = call i32 @DBGUNDO(%struct.sock* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i32 @tcp_undo_cwnd_reduction(%struct.sock* %36, i32 1)
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = call i32 @sock_net(%struct.sock* %38)
  %40 = load i32, i32* @LINUX_MIB_TCPPARTIALUNDO, align 4
  %41 = call i32 @NET_INC_STATS(i32 %39, i32 %40)
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @tcp_try_keep_open(%struct.sock* %42)
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %33, %25
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_packet_delayed(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_check_sack_reordering(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_any_retrans_done(%struct.sock*) #1

declare dso_local i32 @DBGUNDO(%struct.sock*, i8*) #1

declare dso_local i32 @tcp_undo_cwnd_reduction(%struct.sock*, i32) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_try_keep_open(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
