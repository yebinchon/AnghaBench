; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_main.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32 }
%struct.bbr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rate_sample*)* @bbr_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_main(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rate_sample*, align 8
  %5 = alloca %struct.bbr*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.bbr* @inet_csk_ca(%struct.sock* %7)
  store %struct.bbr* %8, %struct.bbr** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %11 = call i32 @bbr_update_model(%struct.sock* %9, %struct.rate_sample* %10)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i32 @bbr_bw(%struct.sock* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.bbr*, %struct.bbr** %5, align 8
  %17 = getelementptr inbounds %struct.bbr, %struct.bbr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bbr_set_pacing_rate(%struct.sock* %14, i32 %15, i32 %18)
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %22 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %23 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.bbr*, %struct.bbr** %5, align 8
  %27 = getelementptr inbounds %struct.bbr, %struct.bbr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bbr_set_cwnd(%struct.sock* %20, %struct.rate_sample* %21, i32 %24, i32 %25, i32 %28)
  ret void
}

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @bbr_update_model(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @bbr_bw(%struct.sock*) #1

declare dso_local i32 @bbr_set_pacing_rate(%struct.sock*, i32, i32) #1

declare dso_local i32 @bbr_set_cwnd(%struct.sock*, %struct.rate_sample*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
