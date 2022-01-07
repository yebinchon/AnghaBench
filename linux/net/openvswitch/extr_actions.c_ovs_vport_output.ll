; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_ovs_vport_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_ovs_vport_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.ovs_frag_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vport* }
%struct.vport = type { i32 }

@ovs_frag_data_storage = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @ovs_vport_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ovs_frag_data*, align 8
  %9 = alloca %struct.vport*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = call %struct.ovs_frag_data* @this_cpu_ptr(i32* @ovs_frag_data_storage)
  store %struct.ovs_frag_data* %10, %struct.ovs_frag_data** %8, align 8
  %11 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %12 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %11, i32 0, i32 9
  %13 = load %struct.vport*, %struct.vport** %12, align 8
  store %struct.vport* %13, %struct.vport** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %16 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @skb_cow_head(%struct.sk_buff* %14, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call i32 @kfree_skb(%struct.sk_buff* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %112

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %28 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__skb_dst_copy(%struct.sk_buff* %26, i32 %29)
  %31 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %32 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32* @OVS_CB(%struct.sk_buff* %34)
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %37 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %42 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VLAN_CFI_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %25
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %50 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %53 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VLAN_CFI_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %48, i32 %51, i32 %57)
  br label %62

59:                                               ; preds = %25
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %65 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @skb_push(%struct.sk_buff* %63, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %72 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %71, i32 0, i32 4
  %73 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %74 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i32 %70, i32* %72, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %82 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %77, i32 %80, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = call i32 @skb_reset_mac_header(%struct.sk_buff* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @eth_p_mpls(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %62
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %100 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @skb_set_network_header(%struct.sk_buff* %98, i32 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = call i32 @skb_reset_mac_len(%struct.sk_buff* %103)
  br label %105

105:                                              ; preds = %92, %62
  %106 = load %struct.vport*, %struct.vport** %9, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = load %struct.ovs_frag_data*, %struct.ovs_frag_data** %8, align 8
  %109 = getelementptr inbounds %struct.ovs_frag_data, %struct.ovs_frag_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ovs_vport_send(%struct.vport* %106, %struct.sk_buff* %107, i32 %110)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %105, %20
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.ovs_frag_data* @this_cpu_ptr(i32*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_dst_copy(%struct.sk_buff*, i32) #1

declare dso_local i32* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @eth_p_mpls(i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i32 @ovs_vport_send(%struct.vport*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
