; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_register_vlan_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan.c_register_vlan_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vlan_dev_priv = type { i32, i32, %struct.net_device* }
%struct.vlan_info = type { %struct.vlan_group }
%struct.vlan_group = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_vlan_dev(%struct.net_device* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca %struct.vlan_dev_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlan_info*, align 8
  %10 = alloca %struct.vlan_group*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %12)
  store %struct.vlan_dev_priv* %13, %struct.vlan_dev_priv** %6, align 8
  %14 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %15 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %18 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %22 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @vlan_vid_add(%struct.net_device* %20, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.vlan_info* @rtnl_dereference(i32 %33)
  store %struct.vlan_info* %34, %struct.vlan_info** %9, align 8
  %35 = load %struct.vlan_info*, %struct.vlan_info** %9, align 8
  %36 = icmp ne %struct.vlan_info* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.vlan_info*, %struct.vlan_info** %9, align 8
  %41 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %40, i32 0, i32 0
  store %struct.vlan_group* %41, %struct.vlan_group** %10, align 8
  %42 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  %43 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %30
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = call i32 @vlan_gvrp_init_applicant(%struct.net_device* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %124

52:                                               ; preds = %46
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = call i32 @vlan_mvrp_init_applicant(%struct.net_device* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %115

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  %61 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %62 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @vlan_group_prealloc_vid(%struct.vlan_group* %60, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %106

69:                                               ; preds = %59
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i32 @register_netdevice(%struct.net_device* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %106

75:                                               ; preds = %69
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %79 = call i32 @netdev_upper_dev_link(%struct.net_device* %76, %struct.net_device* %77, %struct.netlink_ext_ack* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %103

83:                                               ; preds = %75
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = call i32 @dev_hold(%struct.net_device* %84)
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %89 = call i32 @vlan_stacked_transfer_operstate(%struct.net_device* %86, %struct.net_device* %87, %struct.vlan_dev_priv* %88)
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @linkwatch_fire_event(%struct.net_device* %90)
  %92 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  %93 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %94 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = call i32 @vlan_group_set_device(%struct.vlan_group* %92, i32 %95, i32 %96, %struct.net_device* %97)
  %99 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  %100 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  store i32 0, i32* %3, align 4
  br label %132

103:                                              ; preds = %82
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = call i32 @unregister_netdevice(%struct.net_device* %104)
  br label %106

106:                                              ; preds = %103, %74, %68
  %107 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  %108 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = call i32 @vlan_mvrp_uninit_applicant(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %57
  %116 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  %117 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.net_device*, %struct.net_device** %7, align 8
  %122 = call i32 @vlan_gvrp_uninit_applicant(%struct.net_device* %121)
  br label %123

123:                                              ; preds = %120, %115
  br label %124

124:                                              ; preds = %123, %51
  %125 = load %struct.net_device*, %struct.net_device** %7, align 8
  %126 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %6, align 8
  %127 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @vlan_vid_del(%struct.net_device* %125, i32 %128, i32 %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %124, %83, %28
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i32 @vlan_vid_add(%struct.net_device*, i32, i32) #1

declare dso_local %struct.vlan_info* @rtnl_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vlan_gvrp_init_applicant(%struct.net_device*) #1

declare dso_local i32 @vlan_mvrp_init_applicant(%struct.net_device*) #1

declare dso_local i32 @vlan_group_prealloc_vid(%struct.vlan_group*, i32, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_link(%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @vlan_stacked_transfer_operstate(%struct.net_device*, %struct.net_device*, %struct.vlan_dev_priv*) #1

declare dso_local i32 @linkwatch_fire_event(%struct.net_device*) #1

declare dso_local i32 @vlan_group_set_device(%struct.vlan_group*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @vlan_mvrp_uninit_applicant(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_uninit_applicant(%struct.net_device*) #1

declare dso_local i32 @vlan_vid_del(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
