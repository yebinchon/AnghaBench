; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_switch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node*, %struct.dsa_chip_data* }
%struct.device_node = type { i32 }
%struct.dsa_chip_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @dsa_switch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_probe(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.dsa_chip_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.dsa_chip_data*, %struct.dsa_chip_data** %10, align 8
  store %struct.dsa_chip_data* %11, %struct.dsa_chip_data** %4, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call i32 @dsa_switch_parse_of(%struct.dsa_switch* %20, %struct.device_node* %21)
  store i32 %22, i32* %6, align 4
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.dsa_chip_data*, %struct.dsa_chip_data** %4, align 8
  %25 = icmp ne %struct.dsa_chip_data* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %28 = load %struct.dsa_chip_data*, %struct.dsa_chip_data** %4, align 8
  %29 = call i32 @dsa_switch_parse(%struct.dsa_switch* %27, %struct.dsa_chip_data* %28)
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %34
  %40 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %41 = call i32 @dsa_switch_add(%struct.dsa_switch* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %37
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dsa_switch_parse_of(%struct.dsa_switch*, %struct.device_node*) #1

declare dso_local i32 @dsa_switch_parse(%struct.dsa_switch*, %struct.dsa_chip_data*) #1

declare dso_local i32 @dsa_switch_add(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
