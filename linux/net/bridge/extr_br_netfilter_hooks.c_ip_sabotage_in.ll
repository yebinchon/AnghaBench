; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_ip_sabotage_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_ip_sabotage_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32, i32, i32 (i32, i32, %struct.sk_buff*)* }
%struct.nf_bridge_info = type { i32 }

@NF_STOLEN = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @ip_sabotage_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_sabotage_in(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_bridge_info*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %9)
  store %struct.nf_bridge_info* %10, %struct.nf_bridge_info** %8, align 8
  %11 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %12 = icmp ne %struct.nf_bridge_info* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %15 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netif_is_l3_master(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_is_l3_slave(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %32 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %31, i32 0, i32 2
  %33 = load i32 (i32, i32, %struct.sk_buff*)*, i32 (i32, i32, %struct.sk_buff*)** %32, align 8
  %34 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %35 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %38 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 %33(i32 %36, i32 %39, %struct.sk_buff* %40)
  %42 = load i32, i32* @NF_STOLEN, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %24, %18, %13, %3
  %44 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %30
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local i32 @netif_is_l3_master(i32) #1

declare dso_local i32 @netif_is_l3_slave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
