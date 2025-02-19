; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_change_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_dev.c_vlan_dev_change_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_dev_priv = type { i32 }

@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@VLAN_FLAG_GVRP = common dso_local global i32 0, align 4
@VLAN_FLAG_LOOSE_BINDING = common dso_local global i32 0, align 4
@VLAN_FLAG_MVRP = common dso_local global i32 0, align 4
@VLAN_FLAG_BRIDGE_BINDING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_dev_change_flags(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlan_dev_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %10)
  store %struct.vlan_dev_priv* %11, %struct.vlan_dev_priv** %8, align 8
  %12 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %13 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %17 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VLAN_FLAG_LOOSE_BINDING, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @VLAN_FLAG_MVRP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @VLAN_FLAG_BRIDGE_BINDING, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %15, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %96

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %41 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i64 @netif_running(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %31
  %46 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %47 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = xor i32 %48, %49
  %51 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %45
  %55 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %56 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @vlan_gvrp_request_join(%struct.net_device* %62)
  br label %67

64:                                               ; preds = %54
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @vlan_gvrp_request_leave(%struct.net_device* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %45, %31
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = call i64 @netif_running(%struct.net_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %68
  %73 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %74 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = xor i32 %75, %76
  %78 = load i32, i32* @VLAN_FLAG_MVRP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %72
  %82 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %8, align 8
  %83 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @VLAN_FLAG_MVRP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = call i32 @vlan_mvrp_request_join(%struct.net_device* %89)
  br label %94

91:                                               ; preds = %81
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = call i32 @vlan_mvrp_request_leave(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %72, %68
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %28
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_request_join(%struct.net_device*) #1

declare dso_local i32 @vlan_gvrp_request_leave(%struct.net_device*) #1

declare dso_local i32 @vlan_mvrp_request_join(%struct.net_device*) #1

declare dso_local i32 @vlan_mvrp_request_leave(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
