; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_ipv6.c_br_nf_pre_routing_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_ipv6.c_br_nf_pre_routing_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, i32 }
%struct.nf_hook_state = type { i32, i32 }
%struct.nf_bridge_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@br_nf_pre_routing_finish_ipv6 = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_nf_pre_routing_ipv6(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_bridge_info*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %9 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %10 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @br_validate_ipv6(i32 %11, %struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @NF_DROP, align 4
  store i32 %16, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.nf_bridge_info* @nf_bridge_alloc(%struct.sk_buff* %18)
  store %struct.nf_bridge_info* %19, %struct.nf_bridge_info** %8, align 8
  %20 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %21 = icmp ne %struct.nf_bridge_info* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @NF_DROP, align 4
  store i32 %23, i32* %4, align 4
  br label %67

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %27 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @setup_pre_routing(%struct.sk_buff* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @NF_DROP, align 4
  store i32 %32, i32* %4, align 4
  br label %67

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %34)
  store %struct.nf_bridge_info* %35, %struct.nf_bridge_info** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %41 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ETH_P_IPV6, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @NFPROTO_IPV6, align 4
  %53 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %54 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %55 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %58 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @br_nf_pre_routing_finish_ipv6, align 4
  %65 = call i32 @NF_HOOK(i32 %52, i32 %53, i32 %56, i32 %59, %struct.sk_buff* %60, i32 %63, i32* null, i32 %64)
  %66 = load i32, i32* @NF_STOLEN, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %33, %31, %22, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @br_validate_ipv6(i32, %struct.sk_buff*) #1

declare dso_local %struct.nf_bridge_info* @nf_bridge_alloc(%struct.sk_buff*) #1

declare dso_local i32 @setup_pre_routing(%struct.sk_buff*, i32) #1

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32, %struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
