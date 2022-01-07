; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_parse_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_parse_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { %struct.dsa_switch_tree*, %struct.net_device*, %struct.dsa_device_ops*, i32, i32, i32, i32, %struct.dsa_switch* }
%struct.dsa_switch_tree = type { i32 }
%struct.dsa_device_ops = type { i32, i32 }
%struct.dsa_switch = type { i32, %struct.TYPE_2__*, %struct.dsa_switch_tree* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32)* }
%struct.net_device = type { i32 }

@ENOPROTOOPT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No tagger for this switch\0A\00", align 1
@DSA_PORT_TYPE_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*, %struct.net_device*)* @dsa_port_parse_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_parse_cpu(%struct.dsa_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca %struct.dsa_switch_tree*, align 8
  %8 = alloca %struct.dsa_device_ops*, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 7
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %6, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 2
  %15 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %14, align 8
  store %struct.dsa_switch_tree* %15, %struct.dsa_switch_tree** %7, align 8
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %17 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %19, align 8
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %22 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %23 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %20(%struct.dsa_switch* %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.dsa_device_ops* @dsa_tag_driver_get(i32 %26)
  store %struct.dsa_device_ops* %27, %struct.dsa_device_ops** %8, align 8
  %28 = load %struct.dsa_device_ops*, %struct.dsa_device_ops** %8, align 8
  %29 = call i64 @IS_ERR(%struct.dsa_device_ops* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = load %struct.dsa_device_ops*, %struct.dsa_device_ops** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.dsa_device_ops* %32)
  %34 = load i32, i32* @ENOPROTOOPT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %31
  %41 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %42 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.dsa_device_ops*, %struct.dsa_device_ops** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.dsa_device_ops* %45)
  store i32 %46, i32* %3, align 4
  br label %70

47:                                               ; preds = %2
  %48 = load i32, i32* @DSA_PORT_TYPE_CPU, align 4
  %49 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %50 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.dsa_device_ops*, %struct.dsa_device_ops** %8, align 8
  %52 = getelementptr inbounds %struct.dsa_device_ops, %struct.dsa_device_ops* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %55 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dsa_device_ops*, %struct.dsa_device_ops** %8, align 8
  %57 = getelementptr inbounds %struct.dsa_device_ops, %struct.dsa_device_ops* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %60 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dsa_device_ops*, %struct.dsa_device_ops** %8, align 8
  %62 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %63 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %62, i32 0, i32 2
  store %struct.dsa_device_ops* %61, %struct.dsa_device_ops** %63, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %66 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %65, i32 0, i32 1
  store %struct.net_device* %64, %struct.net_device** %66, align 8
  %67 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %7, align 8
  %68 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %69 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %68, i32 0, i32 0
  store %struct.dsa_switch_tree* %67, %struct.dsa_switch_tree** %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %47, %40, %37
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.dsa_device_ops* @dsa_tag_driver_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.dsa_device_ops*) #1

declare dso_local i32 @PTR_ERR(%struct.dsa_device_ops*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
