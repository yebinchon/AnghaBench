; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_vlan_sync_address.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_vlan_sync_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_dev_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.net_device*)* @vlan_sync_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_sync_address(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.vlan_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %6)
  store %struct.vlan_dev_priv* %7, %struct.vlan_dev_priv** %5, align 8
  %8 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %9 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ether_addr_equal(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %80

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i64 @vlan_dev_inherit_address(%struct.net_device* %18, %struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %72

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %28 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ether_addr_equal(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ether_addr_equal(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_uc_del(%struct.net_device* %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %32, %23
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %52 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ether_addr_equal(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ether_addr_equal(i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_uc_add(%struct.net_device* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %56, %47
  br label %72

72:                                               ; preds = %71, %22
  %73 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %74 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ether_addr_copy(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %16
  ret void
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @vlan_dev_inherit_address(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i32) #1

declare dso_local i32 @dev_uc_add(%struct.net_device*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
