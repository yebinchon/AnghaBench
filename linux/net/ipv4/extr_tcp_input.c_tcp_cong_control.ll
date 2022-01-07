; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_cong_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_cong_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32 }
%struct.inet_connection_sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.rate_sample*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32, i32, %struct.rate_sample*)* @tcp_cong_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_cong_control(%struct.sock* %0, i32 %1, i32 %2, i32 %3, %struct.rate_sample* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rate_sample*, align 8
  %11 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.rate_sample* %4, %struct.rate_sample** %10, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %12)
  store %struct.inet_connection_sock* %13, %struct.inet_connection_sock** %11, align 8
  %14 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %15 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.sock*, %struct.rate_sample*)*, i32 (%struct.sock*, %struct.rate_sample*)** %17, align 8
  %19 = icmp ne i32 (%struct.sock*, %struct.rate_sample*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %11, align 8
  %22 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sock*, %struct.rate_sample*)*, i32 (%struct.sock*, %struct.rate_sample*)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load %struct.rate_sample*, %struct.rate_sample** %10, align 8
  %28 = call i32 %25(%struct.sock* %26, %struct.rate_sample* %27)
  br label %52

29:                                               ; preds = %5
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = call i64 @tcp_in_cwnd_reduction(%struct.sock* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @tcp_cwnd_reduction(%struct.sock* %34, i32 %35, i32 %36)
  br label %49

38:                                               ; preds = %29
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @tcp_may_raise_cwnd(%struct.sock* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @tcp_cong_avoid(%struct.sock* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i32 @tcp_update_pacing_rate(%struct.sock* %50)
  br label %52

52:                                               ; preds = %49, %20
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i64 @tcp_in_cwnd_reduction(%struct.sock*) #1

declare dso_local i32 @tcp_cwnd_reduction(%struct.sock*, i32, i32) #1

declare dso_local i64 @tcp_may_raise_cwnd(%struct.sock*, i32) #1

declare dso_local i32 @tcp_cong_avoid(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_update_pacing_rate(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
