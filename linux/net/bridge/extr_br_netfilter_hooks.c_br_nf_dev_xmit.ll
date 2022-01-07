; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_bridge_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @br_nf_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_dev_xmit(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nf_bridge_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %5)
  store %struct.nf_bridge_info* %6, %struct.nf_bridge_info** %4, align 8
  %7 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %4, align 8
  %8 = icmp ne %struct.nf_bridge_info* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %4, align 8
  %11 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @br_nf_pre_routing_finish_bridge_slow(%struct.sk_buff* %15)
  store i32 1, i32* %2, align 4
  br label %18

17:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local i32 @br_nf_pre_routing_finish_bridge_slow(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
