; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_phy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dsa_port = type { i32, i32, %struct.TYPE_4__, %struct.dsa_switch*, %struct.device_node* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.dsa_switch = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dsa_switch*, i32)*, i64 }
%struct.device_node = type { i32 }

@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@PHYLINK_NETDEV = common dso_local global i32 0, align 4
@dsa_port_phylink_mac_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error creating PHYLINK: %ld\0A\00", align 1
@dsa_slave_phylink_fixed_state = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to connect to port %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dsa_slave_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_phy_setup(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %10)
  store %struct.dsa_port* %11, %struct.dsa_port** %4, align 8
  %12 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %13 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %12, i32 0, i32 4
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %16 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %15, i32 0, i32 3
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %16, align 8
  store %struct.dsa_switch* %17, %struct.dsa_switch** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i32 @of_get_phy_mode(%struct.device_node* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %28 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32* %26, i32** %29, align 8
  %30 = load i32, i32* @PHYLINK_NETDEV, align 4
  %31 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %32 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %35 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %34, i32 0, i32 2
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32 @of_fwnode_handle(%struct.device_node* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @phylink_create(%struct.TYPE_4__* %35, i32 %37, i32 %38, i32* @dsa_port_phylink_mac_ops)
  %40 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %41 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %43 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %24
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %50 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  %53 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %55 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %128

58:                                               ; preds = %24
  %59 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %60 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %67 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @dsa_slave_phylink_fixed_state, align 4
  %70 = call i32 @phylink_fixed_state_cb(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %73 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.dsa_switch*, i32)* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %80 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %82, align 8
  %84 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %85 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %86 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %83(%struct.dsa_switch* %84, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %78, %71
  %90 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %91 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.device_node*, %struct.device_node** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @phylink_of_phy_connect(i32 %92, %struct.device_node* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %89
  %101 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %102 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %100
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %108 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dsa_slave_phy_connect(%struct.net_device* %106, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %105
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %116 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %121 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @phylink_destroy(i32 %122)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %2, align 4
  br label %128

125:                                              ; preds = %105
  br label %126

126:                                              ; preds = %125, %100, %89
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %113, %47
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @phylink_create(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @phylink_fixed_state_cb(i32, i32) #1

declare dso_local i32 @phylink_of_phy_connect(i32, %struct.device_node*, i32) #1

declare dso_local i32 @dsa_slave_phy_connect(%struct.net_device*, i32) #1

declare dso_local i32 @phylink_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
