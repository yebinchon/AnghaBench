; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_netlink.c_vlan_get_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_netlink.c_vlan_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_dev_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @vlan_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vlan_get_size(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vlan_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %4)
  store %struct.vlan_dev_priv* %5, %struct.vlan_dev_priv** %3, align 8
  %6 = call i64 @nla_total_size(i32 2)
  %7 = call i64 @nla_total_size(i32 2)
  %8 = add i64 %6, %7
  %9 = call i64 @nla_total_size(i32 4)
  %10 = add i64 %8, %9
  %11 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @vlan_qos_map_size(i32 %13)
  %15 = add i64 %10, %14
  %16 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %3, align 8
  %17 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @vlan_qos_map_size(i32 %18)
  %20 = add i64 %15, %19
  ret i64 %20
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @vlan_qos_map_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
