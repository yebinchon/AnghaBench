; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_bictcp_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_bictcp_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.bictcp = type { i32, i32 }

@hystart = common dso_local global i64 0, align 8
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
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %19 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i64, i64* @hystart, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.bictcp*, %struct.bictcp** %8, align 8
  %27 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @after(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @bictcp_hystart_reset(%struct.sock* %32)
  br label %34

34:                                               ; preds = %31, %24, %21
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @tcp_slow_start(%struct.tcp_sock* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %55

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %17
  %43 = load %struct.bictcp*, %struct.bictcp** %8, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @bictcp_update(%struct.bictcp* %43, i32 %46, i32 %47)
  %49 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %50 = load %struct.bictcp*, %struct.bictcp** %8, align 8
  %51 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %40, %16
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @bictcp_hystart_reset(%struct.sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*, i32) #1

declare dso_local i32 @bictcp_update(%struct.bictcp*, i32, i32) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
