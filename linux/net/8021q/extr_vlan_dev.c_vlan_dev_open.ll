; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.vlan_dev_priv = type { i32, i32, %struct.net_device* }

@IFF_UP = common dso_local global i32 0, align 4
@VLAN_FLAG_LOOSE_BINDING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@VLAN_FLAG_GVRP = common dso_local global i32 0, align 4
@VLAN_FLAG_MVRP = common dso_local global i32 0, align 4
@VLAN_FLAG_BRIDGE_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vlan_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_dev_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %7)
  store %struct.vlan_dev_priv* %8, %struct.vlan_dev_priv** %4, align 8
  %9 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %4, align 8
  %10 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %4, align 8
  %20 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VLAN_FLAG_LOOSE_BINDING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENETDOWN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %153

28:                                               ; preds = %18, %1
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ether_addr_equal(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %28
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @vlan_dev_inherit_address(%struct.net_device* %38, %struct.net_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_uc_add(%struct.net_device* %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %149

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %37, %28
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_ALLMULTI, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call i32 @dev_set_allmulti(%struct.net_device* %60, i32 1)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %133

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_PROMISC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = call i32 @dev_set_promiscuity(%struct.net_device* %74, i32 1)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %122

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %4, align 8
  %82 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ether_addr_copy(i32 %83, i32 %86)
  %88 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %4, align 8
  %89 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = call i32 @vlan_gvrp_request_join(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %80
  %98 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %4, align 8
  %99 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VLAN_FLAG_MVRP, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = call i32 @vlan_mvrp_request_join(%struct.net_device* %105)
  br label %107

107:                                              ; preds = %104, %97
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = call i64 @netif_carrier_ok(%struct.net_device* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %4, align 8
  %113 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @VLAN_FLAG_BRIDGE_BINDING, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @netif_carrier_on(%struct.net_device* %119)
  br label %121

121:                                              ; preds = %118, %111, %107
  store i32 0, i32* %2, align 4
  br label %153

122:                                              ; preds = %78
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IFF_ALLMULTI, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = call i32 @dev_set_allmulti(%struct.net_device* %130, i32 -1)
  br label %132

132:                                              ; preds = %129, %122
  br label %133

133:                                              ; preds = %132, %64
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.net_device*, %struct.net_device** %5, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ether_addr_equal(i32 %136, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = load %struct.net_device*, %struct.net_device** %5, align 8
  %144 = load %struct.net_device*, %struct.net_device** %3, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_uc_del(%struct.net_device* %143, i32 %146)
  br label %148

148:                                              ; preds = %142, %133
  br label %149

149:                                              ; preds = %148, %50
  %150 = load %struct.net_device*, %struct.net_device** %3, align 8
  %151 = call i32 @netif_carrier_off(%struct.net_device* %150)
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %121, %25
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @vlan_dev_inherit_address(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_uc_add(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @vlan_gvrp_request_join(%struct.net_device*) #1

declare dso_local i32 @vlan_mvrp_request_join(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
