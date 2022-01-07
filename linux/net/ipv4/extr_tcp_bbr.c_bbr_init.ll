; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.bbr = type { i64*, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i64, i64 }

@TCP_INFINITE_SSTHRESH = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i32 0, align 4
@SK_PACING_NONE = common dso_local global i32 0, align 4
@SK_PACING_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @bbr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_init(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.bbr*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.bbr* @inet_csk_ca(%struct.sock* %7)
  store %struct.bbr* %8, %struct.bbr** %4, align 8
  %9 = load %struct.bbr*, %struct.bbr** %4, align 8
  %10 = getelementptr inbounds %struct.bbr, %struct.bbr* %9, i32 0, i32 22
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @TCP_INFINITE_SSTHRESH, align 4
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.bbr*, %struct.bbr** %4, align 8
  %15 = getelementptr inbounds %struct.bbr, %struct.bbr* %14, i32 0, i32 13
  store i64 0, i64* %15, align 8
  %16 = load %struct.bbr*, %struct.bbr** %4, align 8
  %17 = getelementptr inbounds %struct.bbr, %struct.bbr* %16, i32 0, i32 21
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @TCP_CA_Open, align 4
  %19 = load %struct.bbr*, %struct.bbr** %4, align 8
  %20 = getelementptr inbounds %struct.bbr, %struct.bbr* %19, i32 0, i32 20
  store i32 %18, i32* %20, align 8
  %21 = load %struct.bbr*, %struct.bbr** %4, align 8
  %22 = getelementptr inbounds %struct.bbr, %struct.bbr* %21, i32 0, i32 19
  store i64 0, i64* %22, align 8
  %23 = load %struct.bbr*, %struct.bbr** %4, align 8
  %24 = getelementptr inbounds %struct.bbr, %struct.bbr* %23, i32 0, i32 18
  store i64 0, i64* %24, align 8
  %25 = load %struct.bbr*, %struct.bbr** %4, align 8
  %26 = getelementptr inbounds %struct.bbr, %struct.bbr* %25, i32 0, i32 17
  store i64 0, i64* %26, align 8
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = call i32 @tcp_min_rtt(%struct.tcp_sock* %27)
  %29 = load %struct.bbr*, %struct.bbr** %4, align 8
  %30 = getelementptr inbounds %struct.bbr, %struct.bbr* %29, i32 0, i32 16
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @tcp_jiffies32, align 4
  %32 = load %struct.bbr*, %struct.bbr** %4, align 8
  %33 = getelementptr inbounds %struct.bbr, %struct.bbr* %32, i32 0, i32 15
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bbr*, %struct.bbr** %4, align 8
  %35 = getelementptr inbounds %struct.bbr, %struct.bbr* %34, i32 0, i32 14
  %36 = load %struct.bbr*, %struct.bbr** %4, align 8
  %37 = getelementptr inbounds %struct.bbr, %struct.bbr* %36, i32 0, i32 13
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @minmax_reset(i32* %35, i64 %38, i32 0)
  %40 = load %struct.bbr*, %struct.bbr** %4, align 8
  %41 = getelementptr inbounds %struct.bbr, %struct.bbr* %40, i32 0, i32 12
  store i64 0, i64* %41, align 8
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i32 @bbr_init_pacing_rate_from_rtt(%struct.sock* %42)
  %44 = load %struct.bbr*, %struct.bbr** %4, align 8
  %45 = getelementptr inbounds %struct.bbr, %struct.bbr* %44, i32 0, i32 11
  store i64 0, i64* %45, align 8
  %46 = load %struct.bbr*, %struct.bbr** %4, align 8
  %47 = getelementptr inbounds %struct.bbr, %struct.bbr* %46, i32 0, i32 10
  store i64 0, i64* %47, align 8
  %48 = load %struct.bbr*, %struct.bbr** %4, align 8
  %49 = getelementptr inbounds %struct.bbr, %struct.bbr* %48, i32 0, i32 9
  store i64 0, i64* %49, align 8
  %50 = load %struct.bbr*, %struct.bbr** %4, align 8
  %51 = getelementptr inbounds %struct.bbr, %struct.bbr* %50, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = load %struct.bbr*, %struct.bbr** %4, align 8
  %53 = getelementptr inbounds %struct.bbr, %struct.bbr* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.bbr*, %struct.bbr** %4, align 8
  %55 = getelementptr inbounds %struct.bbr, %struct.bbr* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.bbr*, %struct.bbr** %4, align 8
  %57 = getelementptr inbounds %struct.bbr, %struct.bbr* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = call i32 @bbr_reset_lt_bw_sampling(%struct.sock* %58)
  %60 = load %struct.sock*, %struct.sock** %2, align 8
  %61 = call i32 @bbr_reset_startup_mode(%struct.sock* %60)
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bbr*, %struct.bbr** %4, align 8
  %66 = getelementptr inbounds %struct.bbr, %struct.bbr* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bbr*, %struct.bbr** %4, align 8
  %68 = getelementptr inbounds %struct.bbr, %struct.bbr* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.bbr*, %struct.bbr** %4, align 8
  %70 = getelementptr inbounds %struct.bbr, %struct.bbr* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.bbr*, %struct.bbr** %4, align 8
  %72 = getelementptr inbounds %struct.bbr, %struct.bbr* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.bbr*, %struct.bbr** %4, align 8
  %74 = getelementptr inbounds %struct.bbr, %struct.bbr* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.bbr*, %struct.bbr** %4, align 8
  %78 = getelementptr inbounds %struct.bbr, %struct.bbr* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.sock*, %struct.sock** %2, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load i32, i32* @SK_PACING_NONE, align 4
  %84 = load i32, i32* @SK_PACING_NEEDED, align 4
  %85 = call i32 @cmpxchg(i32* %82, i32 %83, i32 %84)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_min_rtt(%struct.tcp_sock*) #1

declare dso_local i32 @minmax_reset(i32*, i64, i32) #1

declare dso_local i32 @bbr_init_pacing_rate_from_rtt(%struct.sock*) #1

declare dso_local i32 @bbr_reset_lt_bw_sampling(%struct.sock*) #1

declare dso_local i32 @bbr_reset_startup_mode(%struct.sock*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
