; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_notify_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_notify_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_softif_vlan = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BATADV_CMD_SET_VLAN = common dso_local global i32 0, align 4
@batadv_netlink_family = common dso_local global i32 0, align 4
@BATADV_NL_MCGRP_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_netlink_notify_vlan(%struct.batadv_priv* %0, %struct.batadv_softif_vlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_softif_vlan*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.batadv_softif_vlan* %1, %struct.batadv_softif_vlan** %5, align 8
  %8 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sk_buff* @nlmsg_new(i32 %8, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %19 = load %struct.batadv_softif_vlan*, %struct.batadv_softif_vlan** %5, align 8
  %20 = load i32, i32* @BATADV_CMD_SET_VLAN, align 4
  %21 = call i32 @batadv_netlink_vlan_fill(%struct.sk_buff* %17, %struct.batadv_priv* %18, %struct.batadv_softif_vlan* %19, i32 %20, i32 0, i32 0, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @nlmsg_free(%struct.sk_buff* %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %16
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %30 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_net(i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @BATADV_NL_MCGRP_CONFIG, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @genlmsg_multicast_netns(i32* @batadv_netlink_family, i32 %32, %struct.sk_buff* %33, i32 0, i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %24, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @batadv_netlink_vlan_fill(%struct.sk_buff*, %struct.batadv_priv*, %struct.batadv_softif_vlan*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
