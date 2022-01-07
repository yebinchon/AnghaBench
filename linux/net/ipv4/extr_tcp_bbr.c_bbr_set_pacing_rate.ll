; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_set_pacing_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_set_pacing_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.tcp_sock = type { i64 }
%struct.bbr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @bbr_set_pacing_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_set_pacing_rate(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.bbr*, align 8
  %9 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.bbr* @inet_csk_ca(%struct.sock* %12)
  store %struct.bbr* %13, %struct.bbr** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @bbr_bw_to_pacing_rate(%struct.sock* %14, i32 %15, i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.bbr*, %struct.bbr** %8, align 8
  %19 = getelementptr inbounds %struct.bbr, %struct.bbr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i1 [ false, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @bbr_init_pacing_rate_from_rtt(%struct.sock* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i64 @bbr_full_bw_reached(%struct.sock* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39, %35
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @bbr_bw_to_pacing_rate(%struct.sock*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bbr_init_pacing_rate_from_rtt(%struct.sock*) #1

declare dso_local i64 @bbr_full_bw_reached(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
