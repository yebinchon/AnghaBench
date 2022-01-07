; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_undo_loss.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_undo_loss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"partial loss\00", align 1
@LINUX_MIB_TCPLOSSUNDO = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSPURIOUSRTOS = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @tcp_try_undo_loss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_undo_loss(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %13 = call i64 @tcp_may_undo(%struct.tcp_sock* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11, %2
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @tcp_undo_cwnd_reduction(%struct.sock* %16, i32 1)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call i32 @DBGUNDO(%struct.sock* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call i32 @sock_net(%struct.sock* %20)
  %22 = load i32, i32* @LINUX_MIB_TCPLOSSUNDO, align 4
  %23 = call i32 @NET_INC_STATS(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @sock_net(%struct.sock* %27)
  %29 = load i32, i32* @LINUX_MIB_TCPSPURIOUSRTOS, align 4
  %30 = call i32 @NET_INC_STATS(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %15
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %39 = call i64 @tcp_is_sack(%struct.tcp_sock* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %31
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = load i32, i32* @TCP_CA_Open, align 4
  %44 = call i32 @tcp_set_ca_state(%struct.sock* %42, i32 %43)
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %37
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_may_undo(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_undo_cwnd_reduction(%struct.sock*, i32) #1

declare dso_local i32 @DBGUNDO(%struct.sock*, i8*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @tcp_is_sack(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
