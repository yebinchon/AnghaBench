; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_is_new_conn_expected.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_is_new_conn_expected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32, i64 }

@IP_VS_TCP_S_TIME_WAIT = common dso_local global i32 0, align 4
@IP_VS_TCP_S_CLOSE = common dso_local global i32 0, align 4
@IP_VS_TCP_S_FIN_WAIT = common dso_local global i32 0, align 4
@IP_VS_CONN_F_NOOUTPUT = common dso_local global i32 0, align 4
@IP_VS_SCTP_S_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*, i32)* @is_new_conn_expected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_new_conn_expected(%struct.ip_vs_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_conn*, align 8
  %5 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %7 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

11:                                               ; preds = %2
  %12 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %13 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %56 [
    i32 128, label %15
    i32 129, label %49
  ]

15:                                               ; preds = %11
  %16 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %17 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IP_VS_TCP_S_TIME_WAIT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %46, label %21

21:                                               ; preds = %15
  %22 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %23 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IP_VS_TCP_S_CLOSE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %46, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %33 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IP_VS_TCP_S_FIN_WAIT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %39 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %37, %31, %27
  %45 = phi i1 [ false, %31 ], [ false, %27 ], [ %43, %37 ]
  br label %46

46:                                               ; preds = %44, %21, %15
  %47 = phi i1 [ true, %21 ], [ true, %15 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %57

49:                                               ; preds = %11
  %50 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %51 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IP_VS_SCTP_S_CLOSED, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %49, %46, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
