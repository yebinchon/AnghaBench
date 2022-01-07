; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_pre_routing.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_pre_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, i32 }
%struct.nf_hook_state = type { i32, i32, i32 }
%struct.nf_bridge_info = type { i32 }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { i32 }
%struct.brnf_net = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NF_DROP = common dso_local global i32 0, align 4
@brnf_net_id = common dso_local global i32 0, align 4
@BROPT_NF_CALL_IP6TABLES = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Module ipv6 is disabled, so call_ip6tables is not supported.\00", align 1
@BROPT_NF_CALL_IPTABLES = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_PRE_ROUTING = common dso_local global i32 0, align 4
@br_nf_pre_routing_finish = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @br_nf_pre_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_pre_routing(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_bridge_info*, align 8
  %9 = alloca %struct.net_bridge_port*, align 8
  %10 = alloca %struct.net_bridge*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.brnf_net*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @nf_bridge_encap_header_len(%struct.sk_buff* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @pskb_may_pull(%struct.sk_buff* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @NF_DROP, align 4
  store i32 %24, i32* %4, align 4
  br label %183

25:                                               ; preds = %3
  %26 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %27 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.net_bridge_port* @br_port_get_rcu(i32 %28)
  store %struct.net_bridge_port* %29, %struct.net_bridge_port** %9, align 8
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %31 = icmp eq %struct.net_bridge_port* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @NF_DROP, align 4
  store i32 %33, i32* %4, align 4
  br label %183

34:                                               ; preds = %25
  %35 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %36 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %35, i32 0, i32 0
  %37 = load %struct.net_bridge*, %struct.net_bridge** %36, align 8
  store %struct.net_bridge* %37, %struct.net_bridge** %10, align 8
  %38 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %39 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @brnf_net_id, align 4
  %42 = call %struct.brnf_net* @net_generic(i32 %40, i32 %41)
  store %struct.brnf_net* %42, %struct.brnf_net** %12, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i64 @IS_IPV6(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %34
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %49 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @is_vlan_ipv6(%struct.sk_buff* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %56 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @is_pppoe_ipv6(%struct.sk_buff* %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %53, %46, %34
  %61 = load %struct.brnf_net*, %struct.brnf_net** %12, align 8
  %62 = getelementptr inbounds %struct.brnf_net, %struct.brnf_net* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %67 = load i32, i32* @BROPT_NF_CALL_IP6TABLES, align 4
  %68 = call i32 @br_opt_get(%struct.net_bridge* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %71, i32* %4, align 4
  br label %183

72:                                               ; preds = %65, %60
  %73 = call i32 (...) @ipv6_mod_enabled()
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = call i32 @pr_warn_once(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @NF_DROP, align 4
  store i32 %77, i32* %4, align 4
  br label %183

78:                                               ; preds = %72
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call i32 @nf_bridge_pull_encap_header_rcsum(%struct.sk_buff* %79)
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %84 = call i32 @br_nf_pre_routing_ipv6(i8* %81, %struct.sk_buff* %82, %struct.nf_hook_state* %83)
  store i32 %84, i32* %4, align 4
  br label %183

85:                                               ; preds = %53
  %86 = load %struct.brnf_net*, %struct.brnf_net** %12, align 8
  %87 = getelementptr inbounds %struct.brnf_net, %struct.brnf_net* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %92 = load i32, i32* @BROPT_NF_CALL_IPTABLES, align 4
  %93 = call i32 @br_opt_get(%struct.net_bridge* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %96, i32* %4, align 4
  br label %183

97:                                               ; preds = %90, %85
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i32 @IS_IP(%struct.sk_buff* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %97
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %104 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @is_vlan_ip(%struct.sk_buff* %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %101
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %111 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @is_pppoe_ip(%struct.sk_buff* %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %116, i32* %4, align 4
  br label %183

117:                                              ; preds = %108, %101, %97
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = call i32 @nf_bridge_pull_encap_header_rcsum(%struct.sk_buff* %118)
  %120 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %121 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = call i64 @br_validate_ipv4(i32 %122, %struct.sk_buff* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @NF_DROP, align 4
  store i32 %127, i32* %4, align 4
  br label %183

128:                                              ; preds = %117
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = call i32 @nf_bridge_alloc(%struct.sk_buff* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* @NF_DROP, align 4
  store i32 %133, i32* %4, align 4
  br label %183

134:                                              ; preds = %128
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %137 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @setup_pre_routing(%struct.sk_buff* %135, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* @NF_DROP, align 4
  store i32 %142, i32* %4, align 4
  br label %183

143:                                              ; preds = %134
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %144)
  store %struct.nf_bridge_info* %145, %struct.nf_bridge_info** %8, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %146)
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %151 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @ETH_P_IP, align 4
  %153 = call i32 @htons(i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %159)
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %162, 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %158, %164
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load i32, i32* @NFPROTO_IPV4, align 4
  %169 = load i32, i32* @NF_INET_PRE_ROUTING, align 4
  %170 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %171 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %174 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @br_nf_pre_routing_finish, align 4
  %181 = call i32 @NF_HOOK(i32 %168, i32 %169, i32 %172, i32 %175, %struct.sk_buff* %176, i32 %179, i32* null, i32 %180)
  %182 = load i32, i32* @NF_STOLEN, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %143, %141, %132, %126, %115, %95, %78, %75, %70, %32, %23
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @nf_bridge_encap_header_len(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(i32) #1

declare dso_local %struct.brnf_net* @net_generic(i32, i32) #1

declare dso_local i64 @IS_IPV6(%struct.sk_buff*) #1

declare dso_local i64 @is_vlan_ipv6(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_pppoe_ipv6(%struct.sk_buff*, i32) #1

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @ipv6_mod_enabled(...) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @nf_bridge_pull_encap_header_rcsum(%struct.sk_buff*) #1

declare dso_local i32 @br_nf_pre_routing_ipv6(i8*, %struct.sk_buff*, %struct.nf_hook_state*) #1

declare dso_local i32 @IS_IP(%struct.sk_buff*) #1

declare dso_local i32 @is_vlan_ip(%struct.sk_buff*, i32) #1

declare dso_local i32 @is_pppoe_ip(%struct.sk_buff*, i32) #1

declare dso_local i64 @br_validate_ipv4(i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_alloc(%struct.sk_buff*) #1

declare dso_local i32 @setup_pre_routing(%struct.sk_buff*, i32) #1

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32, %struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
