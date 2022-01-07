; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_lwt.c_ila_encap_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/ila/extr_ila_lwt.c_ila_encap_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_state = type { i32 }
%struct.ila_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)* @ila_encap_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ila_encap_cmp(%struct.lwtunnel_state* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca %struct.lwtunnel_state*, align 8
  %4 = alloca %struct.lwtunnel_state*, align 8
  %5 = alloca %struct.ila_params*, align 8
  %6 = alloca %struct.ila_params*, align 8
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %3, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %4, align 8
  %7 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %3, align 8
  %8 = call %struct.ila_params* @ila_params_lwtunnel(%struct.lwtunnel_state* %7)
  store %struct.ila_params* %8, %struct.ila_params** %5, align 8
  %9 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %10 = call %struct.ila_params* @ila_params_lwtunnel(%struct.lwtunnel_state* %9)
  store %struct.ila_params* %10, %struct.ila_params** %6, align 8
  %11 = load %struct.ila_params*, %struct.ila_params** %5, align 8
  %12 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ila_params*, %struct.ila_params** %6, align 8
  %16 = getelementptr inbounds %struct.ila_params, %struct.ila_params* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %14, %18
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local %struct.ila_params* @ila_params_lwtunnel(%struct.lwtunnel_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
