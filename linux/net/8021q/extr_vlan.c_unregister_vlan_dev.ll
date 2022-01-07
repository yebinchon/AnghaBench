; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_unregister_vlan_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_unregister_vlan_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.vlan_dev_priv = type { i32, i32, i32, %struct.net_device* }
%struct.vlan_info = type { %struct.vlan_group }
%struct.vlan_group = type { i64 }

@VLAN_FLAG_MVRP = common dso_local global i32 0, align 4
@VLAN_FLAG_GVRP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_vlan_dev(%struct.net_device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.vlan_dev_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.vlan_info*, align 8
  %8 = alloca %struct.vlan_group*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %10)
  store %struct.vlan_dev_priv* %11, %struct.vlan_dev_priv** %5, align 8
  %12 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @ASSERT_RTNL()
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.vlan_info* @rtnl_dereference(i32 %21)
  store %struct.vlan_info* %22, %struct.vlan_info** %7, align 8
  %23 = load %struct.vlan_info*, %struct.vlan_info** %7, align 8
  %24 = icmp ne %struct.vlan_info* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.vlan_info*, %struct.vlan_info** %7, align 8
  %29 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %28, i32 0, i32 0
  store %struct.vlan_group* %29, %struct.vlan_group** %8, align 8
  %30 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %31 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %35 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VLAN_FLAG_MVRP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @vlan_mvrp_request_leave(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %40, %2
  %44 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %45 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @vlan_gvrp_request_leave(%struct.net_device* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %55 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %56 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @vlan_group_set_device(%struct.vlan_group* %54, i32 %57, i32 %58, i32* null)
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %60, %struct.net_device* %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load %struct.list_head*, %struct.list_head** %4, align 8
  %65 = call i32 @unregister_netdevice_queue(%struct.net_device* %63, %struct.list_head* %64)
  %66 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %67 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %53
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i32 @vlan_mvrp_uninit_applicant(%struct.net_device* %71)
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = call i32 @vlan_gvrp_uninit_applicant(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %70, %53
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %5, align 8
  %78 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @vlan_vid_del(%struct.net_device* %76, i32 %79, i32 %80)
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = call i32 @dev_put(%struct.net_device* %82)
  ret void
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.vlan_info* @rtnl_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vlan_mvrp_request_leave(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_request_leave(%struct.net_device*) #1

declare dso_local i32 @vlan_group_set_device(%struct.vlan_group*, i32, i32, i32*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @vlan_mvrp_uninit_applicant(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_uninit_applicant(%struct.net_device*) #1

declare dso_local i32 @vlan_vid_del(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
