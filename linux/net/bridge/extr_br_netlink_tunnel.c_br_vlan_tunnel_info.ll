; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink_tunnel.c_br_vlan_tunnel_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink_tunnel.c_br_vlan_tunnel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, i32, i32, i32, i32*)* @br_vlan_tunnel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_vlan_tunnel_info(%struct.net_bridge_port* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %14 = icmp ne %struct.net_bridge_port* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %40

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %38 [
    i32 128, label %20
    i32 129, label %30
  ]

20:                                               ; preds = %18
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @nbp_vlan_tunnel_info_add(%struct.net_bridge_port* %21, i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i32*, i32** %11, align 8
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %20
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @nbp_vlan_tunnel_info_delete(%struct.net_bridge_port* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %11, align 8
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %18, %37, %29
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %15
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @nbp_vlan_tunnel_info_add(%struct.net_bridge_port*, i32, i32) #1

declare dso_local i32 @nbp_vlan_tunnel_info_delete(%struct.net_bridge_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
