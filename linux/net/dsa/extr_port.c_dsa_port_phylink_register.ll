; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_phylink_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_phylink_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, %struct.TYPE_2__, %struct.device_node*, %struct.dsa_switch* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.dsa_switch = type { i32 }

@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@PHYLINK_DEV = common dso_local global i32 0, align 4
@dsa_port_phylink_mac_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error creating PHYLINK: %ld\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not attach to PHY: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*)* @dsa_port_phylink_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_phylink_register(%struct.dsa_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  %8 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %8, i32 0, i32 3
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  store %struct.dsa_switch* %10, %struct.dsa_switch** %4, align 8
  %11 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %12 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %11, i32 0, i32 2
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @of_get_phy_mode(%struct.device_node* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %1
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %22 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %25 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @PHYLINK_DEV, align 4
  %28 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %29 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %32 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %31, i32 0, i32 1
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call i32 @of_fwnode_handle(%struct.device_node* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @phylink_create(%struct.TYPE_2__* %32, i32 %34, i32 %35, i32* @dsa_port_phylink_mac_ops)
  %37 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %38 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %40 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %20
  %45 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %46 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %51 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %83

54:                                               ; preds = %20
  %55 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %56 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call i32 @phylink_of_phy_connect(i32 %57, %struct.device_node* %58, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %77

70:                                               ; preds = %62, %54
  %71 = call i32 (...) @rtnl_lock()
  %72 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %73 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @phylink_start(i32 %74)
  %76 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %2, align 4
  br label %83

77:                                               ; preds = %67
  %78 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %79 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @phylink_destroy(i32 %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %70, %44
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @phylink_create(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @phylink_of_phy_connect(i32, %struct.device_node*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @phylink_start(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @phylink_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
