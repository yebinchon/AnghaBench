; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.h_dctcp_ece_ack_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.h_dctcp_ece_ack_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@CA_EVENT_ECN_IS_CE = common dso_local global i32 0, align 4
@ICSK_ACK_TIMER = common dso_local global i32 0, align 4
@ICSK_ACK_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i64*, i64*)* @dctcp_ece_ack_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dctcp_ece_ack_update(%struct.sock* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @CA_EVENT_ECN_IS_CE, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %4
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ICSK_ACK_TIMER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dctcp_ece_ack_cwr(%struct.sock* %30, i64 %32)
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @__tcp_send_ack(%struct.sock* %34, i64 %36)
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* @ICSK_ACK_NOW, align 4
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = call %struct.TYPE_6__* @inet_csk(%struct.sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %38, %4
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = call %struct.TYPE_5__* @tcp_sk(%struct.sock* %47)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @dctcp_ece_ack_cwr(%struct.sock* %54, i64 %55)
  ret void
}

declare dso_local %struct.TYPE_6__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dctcp_ece_ack_cwr(%struct.sock*, i64) #1

declare dso_local i32 @__tcp_send_ack(%struct.sock*, i64) #1

declare dso_local %struct.TYPE_5__* @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
