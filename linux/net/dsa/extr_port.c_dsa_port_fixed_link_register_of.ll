; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_fixed_link_register_of.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_fixed_link_register_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, %struct.dsa_switch*, %struct.device_node* }
%struct.dsa_switch = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.dsa_switch*, i32, %struct.phy_device*)* }
%struct.phy_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"failed to register the fixed PHY of port %d\0A\00", align 1
@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*)* @dsa_port_fixed_link_register_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_fixed_link_register_of(%struct.dsa_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  %10 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 2
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 1
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %14, align 8
  store %struct.dsa_switch* %15, %struct.dsa_switch** %5, align 8
  %16 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %17 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_phy_register_fixed_link(%struct.device_node* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %25 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %2, align 4
  br label %66

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = call %struct.phy_device* @of_phy_find_device(%struct.device_node* %31)
  store %struct.phy_device* %32, %struct.phy_device** %6, align 8
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call i32 @of_get_phy_mode(%struct.device_node* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %44 = call i32 @genphy_read_status(%struct.phy_device* %43)
  %45 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %46 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.dsa_switch*, i32, %struct.phy_device*)*, i32 (%struct.dsa_switch*, i32, %struct.phy_device*)** %48, align 8
  %50 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.phy_device*)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %39
  %52 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %53 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dsa_switch*, i32, %struct.phy_device*)*, i32 (%struct.dsa_switch*, i32, %struct.phy_device*)** %55, align 8
  %57 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %60 = call i32 %56(%struct.dsa_switch* %57, i32 %58, %struct.phy_device* %59)
  br label %61

61:                                               ; preds = %51, %39
  %62 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @put_device(i32* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %23
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.phy_device* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @genphy_read_status(%struct.phy_device*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
