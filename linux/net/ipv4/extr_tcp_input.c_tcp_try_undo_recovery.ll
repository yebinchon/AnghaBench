; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_undo_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_undo_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@TCP_CA_Loss = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"loss\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"retrans\00", align 1
@LINUX_MIB_TCPLOSSUNDO = common dso_local global i32 0, align 4
@LINUX_MIB_TCPFULLUNDO = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_try_undo_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_undo_recovery(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %4, align 8
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %9 = call i64 @tcp_may_undo(%struct.tcp_sock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_CA_Loss, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %21 = call i32 @DBGUNDO(%struct.sock* %12, i8* %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @tcp_undo_cwnd_reduction(%struct.sock* %22, i32 0)
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCP_CA_Loss, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %11
  %31 = load i32, i32* @LINUX_MIB_TCPLOSSUNDO, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %11
  %33 = load i32, i32* @LINUX_MIB_TCPFULLUNDO, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @NET_INC_STATS(i32 %36, i32 %37)
  br label %52

39:                                               ; preds = %1
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %62 = call i64 @tcp_is_reno(%struct.tcp_sock* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = call i32 @tcp_any_retrans_done(%struct.sock* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %64
  store i32 1, i32* %2, align 4
  br label %78

72:                                               ; preds = %60, %52
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = load i32, i32* @TCP_CA_Open, align 4
  %75 = call i32 @tcp_set_ca_state(%struct.sock* %73, i32 %74)
  %76 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_may_undo(%struct.tcp_sock*) #1

declare dso_local i32 @DBGUNDO(%struct.sock*, i8*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_undo_cwnd_reduction(%struct.sock*, i32) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_any_retrans_done(%struct.sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
