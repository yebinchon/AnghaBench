; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_update_model.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_update_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rate_sample*)* @bbr_update_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_update_model(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rate_sample*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %7 = call i32 @bbr_update_bw(%struct.sock* %5, %struct.rate_sample* %6)
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %10 = call i32 @bbr_update_ack_aggregation(%struct.sock* %8, %struct.rate_sample* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %13 = call i32 @bbr_update_cycle_phase(%struct.sock* %11, %struct.rate_sample* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %16 = call i32 @bbr_check_full_bw_reached(%struct.sock* %14, %struct.rate_sample* %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %19 = call i32 @bbr_check_drain(%struct.sock* %17, %struct.rate_sample* %18)
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %22 = call i32 @bbr_update_min_rtt(%struct.sock* %20, %struct.rate_sample* %21)
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 @bbr_update_gains(%struct.sock* %23)
  ret void
}

declare dso_local i32 @bbr_update_bw(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @bbr_update_ack_aggregation(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @bbr_update_cycle_phase(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @bbr_check_full_bw_reached(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @bbr_check_drain(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @bbr_update_min_rtt(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @bbr_update_gains(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
