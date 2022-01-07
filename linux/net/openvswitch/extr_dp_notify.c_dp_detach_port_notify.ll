; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_dp_notify.c_dp_detach_port_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_dp_notify.c_dp_detach_port_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { %struct.datapath* }
%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }

@OVS_VPORT_CMD_DEL = common dso_local global i32 0, align 4
@dp_vport_genl_family = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport*)* @dp_detach_port_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp_detach_port_notify(%struct.vport* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.datapath*, align 8
  store %struct.vport* %0, %struct.vport** %2, align 8
  %5 = load %struct.vport*, %struct.vport** %2, align 8
  %6 = getelementptr inbounds %struct.vport, %struct.vport* %5, i32 0, i32 0
  %7 = load %struct.datapath*, %struct.datapath** %6, align 8
  store %struct.datapath* %7, %struct.datapath** %4, align 8
  %8 = load %struct.vport*, %struct.vport** %2, align 8
  %9 = load %struct.datapath*, %struct.datapath** %4, align 8
  %10 = call i32 @ovs_dp_get_net(%struct.datapath* %9)
  %11 = load i32, i32* @OVS_VPORT_CMD_DEL, align 4
  %12 = call %struct.sk_buff* @ovs_vport_cmd_build_info(%struct.vport* %8, i32 %10, i32 0, i32 0, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = load %struct.vport*, %struct.vport** %2, align 8
  %14 = call i32 @ovs_dp_detach_port(%struct.vport* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i64 @IS_ERR(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.datapath*, %struct.datapath** %4, align 8
  %20 = call i32 @ovs_dp_get_net(%struct.datapath* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call i32 @PTR_ERR(%struct.sk_buff* %21)
  %23 = call i32 @genl_set_err(i32* @dp_vport_genl_family, i32 %20, i32 0, i32 0, i32 %22)
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.datapath*, %struct.datapath** %4, align 8
  %26 = call i32 @ovs_dp_get_net(%struct.datapath* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @genlmsg_multicast_netns(i32* @dp_vport_genl_family, i32 %26, %struct.sk_buff* %27, i32 0, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %24, %18
  ret void
}

declare dso_local %struct.sk_buff* @ovs_vport_cmd_build_info(%struct.vport*, i32, i32, i32, i32) #1

declare dso_local i32 @ovs_dp_get_net(%struct.datapath*) #1

declare dso_local i32 @ovs_dp_detach_port(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @genl_set_err(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
