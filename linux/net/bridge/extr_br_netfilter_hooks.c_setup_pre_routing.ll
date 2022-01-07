; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_setup_pre_routing.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_setup_pre_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i64, %struct.net_device* }
%struct.net = type { i32 }
%struct.nf_bridge_info = type { i32, i32, i32, %struct.net_device* }

@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@BRNF_PROTO_8021Q = common dso_local global i32 0, align 4
@ETH_P_PPP_SES = common dso_local global i32 0, align 4
@BRNF_PROTO_PPPOE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @setup_pre_routing(%struct.sk_buff* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_bridge_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %6)
  store %struct.nf_bridge_info* %7, %struct.nf_bridge_info** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PACKET_OTHERHOST, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* @PACKET_HOST, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %5, align 8
  %18 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %5, align 8
  %21 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 2
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %5, align 8
  %26 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %25, i32 0, i32 3
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 2
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = load %struct.net*, %struct.net** %4, align 8
  %32 = call %struct.net_device* @brnf_get_logical_dev(%struct.sk_buff* %27, %struct.net_device* %30, %struct.net* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 2
  store %struct.net_device* %32, %struct.net_device** %34, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ETH_P_8021Q, align 4
  %39 = call i64 @htons(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %19
  %42 = load i32, i32* @BRNF_PROTO_8021Q, align 4
  %43 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %5, align 8
  %44 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %57

45:                                               ; preds = %19
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ETH_P_PPP_SES, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @BRNF_PROTO_PPPOE, align 4
  %54 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %5, align 8
  %55 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32 @skb_orphan(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 2
  %62 = load %struct.net_device*, %struct.net_device** %61, align 8
  ret %struct.net_device* %62
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @brnf_get_logical_dev(%struct.sk_buff*, %struct.net_device*, %struct.net*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
