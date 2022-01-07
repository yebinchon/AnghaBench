; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_vlan_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_vlan_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32)*, i32 }
%struct.dsa_notifier_vlan_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, %struct.dsa_notifier_vlan_info*)* @dsa_switch_vlan_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_vlan_prepare(%struct.dsa_switch* %0, %struct.dsa_notifier_vlan_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_notifier_vlan_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store %struct.dsa_notifier_vlan_info* %1, %struct.dsa_notifier_vlan_info** %5, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.dsa_switch*, i32, i32)* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %28 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dsa_notifier_vlan_info*, %struct.dsa_notifier_vlan_info** %5, align 8
  %35 = call i64 @dsa_switch_vlan_match(%struct.dsa_switch* %32, i32 %33, %struct.dsa_notifier_vlan_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.dsa_notifier_vlan_info*, %struct.dsa_notifier_vlan_info** %5, align 8
  %41 = getelementptr inbounds %struct.dsa_notifier_vlan_info, %struct.dsa_notifier_vlan_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dsa_port_vlan_check(%struct.dsa_switch* %38, i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %70

48:                                               ; preds = %37
  %49 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %50 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32)** %52, align 8
  %54 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.dsa_notifier_vlan_info*, %struct.dsa_notifier_vlan_info** %5, align 8
  %57 = getelementptr inbounds %struct.dsa_notifier_vlan_info, %struct.dsa_notifier_vlan_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %53(%struct.dsa_switch* %54, i32 %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %70

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %31
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %25

69:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %62, %46, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @dsa_switch_vlan_match(%struct.dsa_switch*, i32, %struct.dsa_notifier_vlan_info*) #1

declare dso_local i32 @dsa_port_vlan_check(%struct.dsa_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
