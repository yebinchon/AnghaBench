; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_setup_phy_of.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_setup_phy_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dsa_switch*, i32, %struct.phy_device*)* }
%struct.phy_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"enabled port's phy: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*, i32)* @dsa_port_setup_phy_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_setup_phy_of(%struct.dsa_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 1
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %6, align 8
  %13 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %17 = call %struct.phy_device* @dsa_port_get_phy_device(%struct.dsa_port* %16)
  store %struct.phy_device* %17, %struct.phy_device** %7, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %19 = icmp ne %struct.phy_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %23 = call i64 @IS_ERR(%struct.phy_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %27 = call i32 @PTR_ERR(%struct.phy_device* %26)
  store i32 %27, i32* %3, align 4
  br label %81

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %33 = call i32 @genphy_resume(%struct.phy_device* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %75

37:                                               ; preds = %31
  %38 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %39 = call i32 @genphy_read_status(%struct.phy_device* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %75

43:                                               ; preds = %37
  br label %51

44:                                               ; preds = %28
  %45 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %46 = call i32 @genphy_suspend(%struct.phy_device* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %75

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %53 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dsa_switch*, i32, %struct.phy_device*)*, i32 (%struct.dsa_switch*, i32, %struct.phy_device*)** %55, align 8
  %57 = icmp ne i32 (%struct.dsa_switch*, i32, %struct.phy_device*)* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %60 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dsa_switch*, i32, %struct.phy_device*)*, i32 (%struct.dsa_switch*, i32, %struct.phy_device*)** %62, align 8
  %64 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %67 = call i32 %63(%struct.dsa_switch* %64, i32 %65, %struct.phy_device* %66)
  br label %68

68:                                               ; preds = %58, %51
  %69 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %70 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %73 = call i32 @phydev_name(%struct.phy_device* %72)
  %74 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %49, %42, %36
  %76 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @put_device(i32* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %25, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.phy_device* @dsa_port_get_phy_device(%struct.dsa_port*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @genphy_resume(%struct.phy_device*) #1

declare dso_local i32 @genphy_read_status(%struct.phy_device*) #1

declare dso_local i32 @genphy_suspend(%struct.phy_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
