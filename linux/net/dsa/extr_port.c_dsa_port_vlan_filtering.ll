; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_vlan_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_vlan_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, i32, %struct.dsa_switch* }
%struct.dsa_switch = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32)* }
%struct.switchdev_trans = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_vlan_filtering(%struct.dsa_port* %0, i32 %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.dsa_switch*, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %10 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 2
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %8, align 8
  %13 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %14 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %19 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.dsa_switch*, i32, i32)* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %69

25:                                               ; preds = %17
  %26 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dsa_port_can_apply_vlan_filtering(%struct.dsa_port* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %35 = call i32 @dsa_port_is_vlan_filtering(%struct.dsa_port* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %69

39:                                               ; preds = %33
  %40 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %41 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32)** %43, align 8
  %45 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %46 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %47 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 %44(%struct.dsa_switch* %45, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %69

55:                                               ; preds = %39
  %56 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %57 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %63 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %67 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %53, %38, %30, %24, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i32 @dsa_port_can_apply_vlan_filtering(%struct.dsa_port*, i32) #1

declare dso_local i32 @dsa_port_is_vlan_filtering(%struct.dsa_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
