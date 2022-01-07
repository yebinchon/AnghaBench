; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_mvrp.c_vlan_mvrp_request_leave.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_mvrp.c_vlan_mvrp_request_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_dev_priv = type { i32, i32, i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@vlan_mrp_app = common dso_local global i32 0, align 4
@MVRP_ATTR_VID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlan_mvrp_request_leave(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vlan_dev_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %5)
  store %struct.vlan_dev_priv* %6, %struct.vlan_dev_priv** %3, align 8
  %7 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @htons(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ETH_P_8021Q, align 4
  %15 = call i32 @htons(i32 %14)
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %3, align 8
  %20 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MVRP_ATTR_VID, align 4
  %23 = call i32 @mrp_request_leave(i32 %21, i32* @vlan_mrp_app, i32* %4, i32 4, i32 %22)
  br label %24

24:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @mrp_request_leave(i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
