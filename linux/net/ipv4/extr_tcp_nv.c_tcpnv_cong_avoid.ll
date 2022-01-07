; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_nv.c_tcpnv_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.tcpnv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcpnv_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpnv_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.tcpnv*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.tcpnv* @inet_csk_ca(%struct.sock* %12)
  store %struct.tcpnv* %13, %struct.tcpnv** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @tcp_is_cwnd_limited(%struct.sock* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %67

18:                                               ; preds = %3
  %19 = load %struct.tcpnv*, %struct.tcpnv** %8, align 8
  %20 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %67

24:                                               ; preds = %18
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %26 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @tcp_slow_start(%struct.tcp_sock* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %67

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.tcpnv*, %struct.tcpnv** %8, align 8
  %38 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tcpnv*, %struct.tcpnv** %8, align 8
  %46 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 0, %47
  %49 = shl i32 %44, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %50, i32 %51, i32 %52)
  br label %67

54:                                               ; preds = %36
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tcpnv*, %struct.tcpnv** %8, align 8
  %59 = getelementptr inbounds %struct.tcpnv, %struct.tcpnv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %57, %60
  %62 = call i32 @max(i32 4, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %17, %23, %34, %54, %41
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.tcpnv* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*, i32) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
