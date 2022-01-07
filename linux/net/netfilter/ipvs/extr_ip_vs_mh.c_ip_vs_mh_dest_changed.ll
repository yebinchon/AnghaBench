; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_dest_changed.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_mh.c_ip_vs_mh_dest_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { %struct.ip_vs_mh_state* }
%struct.ip_vs_mh_state = type { i32, i32 }
%struct.ip_vs_dest = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*, %struct.ip_vs_dest*)* @ip_vs_mh_dest_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_mh_dest_changed(%struct.ip_vs_service* %0, %struct.ip_vs_dest* %1) #0 {
  %3 = alloca %struct.ip_vs_service*, align 8
  %4 = alloca %struct.ip_vs_dest*, align 8
  %5 = alloca %struct.ip_vs_mh_state*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %3, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %4, align 8
  %6 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %7 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %6, i32 0, i32 0
  %8 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %7, align 8
  store %struct.ip_vs_mh_state* %8, %struct.ip_vs_mh_state** %5, align 8
  %9 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %10 = call i32 @ip_vs_mh_gcd_weight(%struct.ip_vs_service* %9)
  %11 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %12 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %14 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %15 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ip_vs_mh_shift_weight(%struct.ip_vs_service* %13, i32 %16)
  %18 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %19 = getelementptr inbounds %struct.ip_vs_mh_state, %struct.ip_vs_mh_state* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ip_vs_mh_state*, %struct.ip_vs_mh_state** %5, align 8
  %21 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %22 = call i32 @ip_vs_mh_reassign(%struct.ip_vs_mh_state* %20, %struct.ip_vs_service* %21)
  ret i32 %22
}

declare dso_local i32 @ip_vs_mh_gcd_weight(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_mh_shift_weight(%struct.ip_vs_service*, i32) #1

declare dso_local i32 @ip_vs_mh_reassign(%struct.ip_vs_mh_state*, %struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
