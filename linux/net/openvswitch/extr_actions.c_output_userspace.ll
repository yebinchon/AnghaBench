; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_output_userspace.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_output_userspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.nlattr = type { i32 }
%struct.dp_upcall_info = type { i32, %struct.nlattr*, i32, i32, %struct.nlattr*, i32, i32 }
%struct.vport = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OVS_PACKET_CMD_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, %struct.nlattr*, i32, i32)* @output_userspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_userspace(%struct.datapath* %0, %struct.sk_buff* %1, %struct.sw_flow_key* %2, %struct.nlattr* %3, %struct.nlattr* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.datapath*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sw_flow_key*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dp_upcall_info, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.vport*, align 8
  %19 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %10, align 8
  store %struct.nlattr* %3, %struct.nlattr** %11, align 8
  store %struct.nlattr* %4, %struct.nlattr** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = call i32 @memset(%struct.dp_upcall_info* %15, i32 0, i32 40)
  %21 = load i32, i32* @OVS_PACKET_CMD_ACTION, align 4
  %22 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %15, i32 0, i32 6
  store i32 %21, i32* %22, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %15, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %29 = call %struct.nlattr* @nla_data(%struct.nlattr* %28)
  store %struct.nlattr* %29, %struct.nlattr** %16, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %31 = call i32 @nla_len(%struct.nlattr* %30)
  store i32 %31, i32* %17, align 4
  br label %32

32:                                               ; preds = %72, %7
  %33 = load i32, i32* %17, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %32
  %36 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %37 = call i32 @nla_type(%struct.nlattr* %36)
  switch i32 %37, label %71 [
    i32 128, label %38
    i32 129, label %41
    i32 130, label %45
    i32 131, label %66
  ]

38:                                               ; preds = %35
  %39 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %40 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %15, i32 0, i32 4
  store %struct.nlattr* %39, %struct.nlattr** %40, align 8
  br label %71

41:                                               ; preds = %35
  %42 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %43 = call i32 @nla_get_u32(%struct.nlattr* %42)
  %44 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %15, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  br label %71

45:                                               ; preds = %35
  %46 = load %struct.datapath*, %struct.datapath** %8, align 8
  %47 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %48 = call i32 @nla_get_u32(%struct.nlattr* %47)
  %49 = call %struct.vport* @ovs_vport_rcu(%struct.datapath* %46, i32 %48)
  store %struct.vport* %49, %struct.vport** %18, align 8
  %50 = load %struct.vport*, %struct.vport** %18, align 8
  %51 = icmp ne %struct.vport* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.vport*, %struct.vport** %18, align 8
  %54 = getelementptr inbounds %struct.vport, %struct.vport* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = call i32 @dev_fill_metadata_dst(i32 %55, %struct.sk_buff* %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call i32 @skb_tunnel_info(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %15, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %52
  br label %65

65:                                               ; preds = %64, %45
  br label %71

66:                                               ; preds = %35
  %67 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %68 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %15, i32 0, i32 1
  store %struct.nlattr* %67, %struct.nlattr** %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %15, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  br label %71

71:                                               ; preds = %35, %66, %65, %41, %38
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %74 = call %struct.nlattr* @nla_next(%struct.nlattr* %73, i32* %17)
  store %struct.nlattr* %74, %struct.nlattr** %16, align 8
  br label %32

75:                                               ; preds = %32
  %76 = load %struct.datapath*, %struct.datapath** %8, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = load %struct.sw_flow_key*, %struct.sw_flow_key** %10, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @ovs_dp_upcall(%struct.datapath* %76, %struct.sk_buff* %77, %struct.sw_flow_key* %78, %struct.dp_upcall_info* %15, i32 %79)
  ret i32 %80
}

declare dso_local i32 @memset(%struct.dp_upcall_info*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.vport* @ovs_vport_rcu(%struct.datapath*, i32) #1

declare dso_local i32 @dev_fill_metadata_dst(i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #1

declare dso_local i32 @ovs_dp_upcall(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.dp_upcall_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
