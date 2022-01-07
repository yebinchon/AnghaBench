; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_post_routing.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_post_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i8*, i32 }
%struct.nf_hook_state = type { i32, i32 }
%struct.nf_bridge_info = type { i32, i32 }
%struct.net_device = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_HOST = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@br_nf_dev_queue_xmit = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @br_nf_post_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_post_routing(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_bridge_info*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %11)
  store %struct.nf_bridge_info* %12, %struct.nf_bridge_info** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.net_device* @bridge_parent(i32 %15)
  store %struct.net_device* %16, %struct.net_device** %9, align 8
  %17 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %18 = icmp ne %struct.nf_bridge_info* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %21 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %25, i32* %4, align 4
  br label %116

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @NF_DROP, align 4
  store i32 %30, i32* %4, align 4
  br label %116

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i64 @IS_IP(%struct.sk_buff* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %38 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @is_vlan_ip(%struct.sk_buff* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %45 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @is_pppoe_ip(%struct.sk_buff* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42, %35, %31
  %50 = load i64, i64* @NFPROTO_IPV4, align 8
  store i64 %50, i64* %10, align 8
  br label %74

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i64 @IS_IPV6(%struct.sk_buff* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %58 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @is_vlan_ipv6(%struct.sk_buff* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %65 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @is_pppoe_ipv6(%struct.sk_buff* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62, %55, %51
  %70 = load i64, i64* @NFPROTO_IPV6, align 8
  store i64 %70, i64* %10, align 8
  br label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %72, i32* %4, align 4
  br label %116

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %49
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PACKET_OTHERHOST, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i64, i64* @PACKET_HOST, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %85 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @nf_bridge_pull_encap_header(%struct.sk_buff* %87)
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @NFPROTO_IPV4, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i32, i32* @ETH_P_IP, align 4
  %94 = call i8* @htons(i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %102

97:                                               ; preds = %86
  %98 = load i32, i32* @ETH_P_IPV6, align 4
  %99 = call i8* @htons(i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %105 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %106 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %109 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = load %struct.net_device*, %struct.net_device** %9, align 8
  %113 = load i32, i32* @br_nf_dev_queue_xmit, align 4
  %114 = call i32 @NF_HOOK(i64 %103, i32 %104, i32 %107, i32 %110, %struct.sk_buff* %111, i32* null, %struct.net_device* %112, i32 %113)
  %115 = load i32, i32* @NF_STOLEN, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %102, %71, %29, %24
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @bridge_parent(i32) #1

declare dso_local i64 @IS_IP(%struct.sk_buff*) #1

declare dso_local i64 @is_vlan_ip(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_pppoe_ip(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_IPV6(%struct.sk_buff*) #1

declare dso_local i64 @is_vlan_ipv6(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_pppoe_ipv6(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_bridge_pull_encap_header(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @NF_HOOK(i64, i32, i32, i32, %struct.sk_buff*, i32*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
