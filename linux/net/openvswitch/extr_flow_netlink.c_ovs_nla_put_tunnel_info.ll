; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_put_tunnel_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_put_tunnel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_tunnel_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_nla_put_tunnel_info(%struct.sk_buff* %0, %struct.ip_tunnel_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ip_tunnel_info* %1, %struct.ip_tunnel_info** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %7 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %6, i32 0, i32 2
  %8 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %9 = call i32 @ip_tunnel_info_opts(%struct.ip_tunnel_info* %8)
  %10 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %14 = call i32 @ip_tunnel_info_af(%struct.ip_tunnel_info* %13)
  %15 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__ip_tun_to_nlattr(%struct.sk_buff* %5, i32* %7, i32 %9, i32 %12, i32 %14, i32 %17)
  ret i32 %18
}

declare dso_local i32 @__ip_tun_to_nlattr(%struct.sk_buff*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ip_tunnel_info_opts(%struct.ip_tunnel_info*) #1

declare dso_local i32 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
