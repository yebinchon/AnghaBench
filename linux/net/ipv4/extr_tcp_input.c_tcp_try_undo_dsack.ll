; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_undo_dsack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_undo_dsack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@TCP_RACK_RECOVERY_THRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"D-SACK\00", align 1
@LINUX_MIB_TCPDSACKUNDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_try_undo_dsack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_undo_dsack(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %4, align 8
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @TCP_RACK_RECOVERY_THRESH, align 4
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i64 @min(i32 %17, i64 %22)
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @DBGUNDO(%struct.sock* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call i32 @tcp_undo_cwnd_reduction(%struct.sock* %29, i32 0)
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @sock_net(%struct.sock* %31)
  %33 = load i32, i32* @LINUX_MIB_TCPDSACKUNDO, align 4
  %34 = call i32 @NET_INC_STATS(i32 %32, i32 %33)
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @DBGUNDO(%struct.sock*, i8*) #1

declare dso_local i32 @tcp_undo_cwnd_reduction(%struct.sock*, i32) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
