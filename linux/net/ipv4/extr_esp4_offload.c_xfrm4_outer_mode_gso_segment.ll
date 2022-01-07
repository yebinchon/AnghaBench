; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4_offload.c_xfrm4_outer_mode_gso_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4_offload.c_xfrm4_outer_mode_gso_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.xfrm_state*, %struct.sk_buff*, i32)* @xfrm4_outer_mode_gso_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @xfrm4_outer_mode_gso_segment(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %22 [
    i32 128, label %12
    i32 129, label %17
  ]

12:                                               ; preds = %3
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.sk_buff* @xfrm4_tunnel_gso_segment(%struct.xfrm_state* %13, %struct.sk_buff* %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.sk_buff* @xfrm4_transport_gso_segment(%struct.xfrm_state* %18, %struct.sk_buff* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.sk_buff* @ERR_PTR(i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %4, align 8
  br label %26

26:                                               ; preds = %22, %17, %12
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %27
}

declare dso_local %struct.sk_buff* @xfrm4_tunnel_gso_segment(%struct.xfrm_state*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @xfrm4_transport_gso_segment(%struct.xfrm_state*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
