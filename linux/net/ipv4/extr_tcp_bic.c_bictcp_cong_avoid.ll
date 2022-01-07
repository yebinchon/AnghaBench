; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bic.c_bictcp_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bic.c_bictcp_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.bictcp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @bictcp_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.bictcp*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %11)
  store %struct.bictcp* %12, %struct.bictcp** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @tcp_is_cwnd_limited(%struct.sock* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %19 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @tcp_slow_start(%struct.tcp_sock* %22, i32 %23)
  br label %36

25:                                               ; preds = %17
  %26 = load %struct.bictcp*, %struct.bictcp** %8, align 8
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bictcp_update(%struct.bictcp* %26, i32 %29)
  %31 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %32 = load %struct.bictcp*, %struct.bictcp** %8, align 8
  %33 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %31, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %16, %25, %21
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*, i32) #1

declare dso_local i32 @bictcp_update(%struct.bictcp*, i32) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
