; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_update_cycle_phase.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_update_cycle_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32 }
%struct.bbr = type { i64 }

@BBR_PROBE_BW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rate_sample*)* @bbr_update_cycle_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_update_cycle_phase(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rate_sample*, align 8
  %5 = alloca %struct.bbr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.bbr* @inet_csk_ca(%struct.sock* %6)
  store %struct.bbr* %7, %struct.bbr** %5, align 8
  %8 = load %struct.bbr*, %struct.bbr** %5, align 8
  %9 = getelementptr inbounds %struct.bbr, %struct.bbr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BBR_PROBE_BW, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %16 = call i64 @bbr_is_next_cycle_phase(%struct.sock* %14, %struct.rate_sample* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i32 @bbr_advance_cycle_phase(%struct.sock* %19)
  br label %21

21:                                               ; preds = %18, %13, %2
  ret void
}

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @bbr_is_next_cycle_phase(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @bbr_advance_cycle_phase(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
