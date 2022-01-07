; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_forward_arp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_forward_arp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_hook_state = type { i32, %struct.net_device*, i32, i32 }
%struct.net_device = type { i32 }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { i32 }
%struct.brnf_net = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@brnf_net_id = common dso_local global i32 0, align 4
@BROPT_NF_CALL_ARPTABLES = common dso_local global i32 0, align 4
@NFPROTO_ARP = common dso_local global i32 0, align 4
@NF_ARP_FORWARD = common dso_local global i32 0, align 4
@br_nf_forward_finish = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @br_nf_forward_arp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_forward_arp(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.net_bridge_port*, align 8
  %9 = alloca %struct.net_bridge*, align 8
  %10 = alloca %struct.net_device**, align 8
  %11 = alloca %struct.brnf_net*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.net_device**
  store %struct.net_device** %15, %struct.net_device*** %10, align 8
  %16 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %17 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.net_bridge_port* @br_port_get_rcu(i32 %18)
  store %struct.net_bridge_port* %19, %struct.net_bridge_port** %8, align 8
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %21 = icmp eq %struct.net_bridge_port* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %23, i32* %4, align 4
  br label %101

24:                                               ; preds = %3
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 0
  %27 = load %struct.net_bridge*, %struct.net_bridge** %26, align 8
  store %struct.net_bridge* %27, %struct.net_bridge** %9, align 8
  %28 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %29 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @brnf_net_id, align 4
  %32 = call %struct.brnf_net* @net_generic(i32 %30, i32 %31)
  store %struct.brnf_net* %32, %struct.brnf_net** %11, align 8
  %33 = load %struct.brnf_net*, %struct.brnf_net** %11, align 8
  %34 = getelementptr inbounds %struct.brnf_net, %struct.brnf_net* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %24
  %38 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %39 = load i32, i32* @BROPT_NF_CALL_ARPTABLES, align 4
  %40 = call i32 @br_opt_get(%struct.net_bridge* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %43, i32* %4, align 4
  br label %101

44:                                               ; preds = %37, %24
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @IS_ARP(%struct.sk_buff* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %51 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @is_vlan_arp(%struct.sk_buff* %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %48
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @nf_bridge_pull_encap_header(%struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %57, %44
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call %struct.TYPE_2__* @arp_hdr(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 4
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %69 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @is_vlan_arp(%struct.sk_buff* %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %77, i32* %4, align 4
  br label %101

78:                                               ; preds = %60
  %79 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %80 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %79, i32 0, i32 1
  %81 = load %struct.net_device*, %struct.net_device** %80, align 8
  %82 = load %struct.net_device**, %struct.net_device*** %10, align 8
  store %struct.net_device* %81, %struct.net_device** %82, align 8
  %83 = load i32, i32* @NFPROTO_ARP, align 4
  %84 = load i32, i32* @NF_ARP_FORWARD, align 4
  %85 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %86 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %89 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %93 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %92, i32 0, i32 1
  %94 = load %struct.net_device*, %struct.net_device** %93, align 8
  %95 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %96 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @br_nf_forward_finish, align 4
  %99 = call i32 @NF_HOOK(i32 %83, i32 %84, i32 %87, i32 %90, %struct.sk_buff* %91, %struct.net_device* %94, i32 %97, i32 %98)
  %100 = load i32, i32* @NF_STOLEN, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %78, %76, %55, %42, %22
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(i32) #1

declare dso_local %struct.brnf_net* @net_generic(i32, i32) #1

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @IS_ARP(%struct.sk_buff*) #1

declare dso_local i64 @is_vlan_arp(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_bridge_pull_encap_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_push_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32, %struct.sk_buff*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
