; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_ageing_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_ageing_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32)* }
%struct.dsa_notifier_ageing_time_info = type { i32, %struct.switchdev_trans* }
%struct.switchdev_trans = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, %struct.dsa_notifier_ageing_time_info*)* @dsa_switch_ageing_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_ageing_time(%struct.dsa_switch* %0, %struct.dsa_notifier_ageing_time_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_notifier_ageing_time_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_trans*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store %struct.dsa_notifier_ageing_time_info* %1, %struct.dsa_notifier_ageing_time_info** %5, align 8
  %8 = load %struct.dsa_notifier_ageing_time_info*, %struct.dsa_notifier_ageing_time_info** %5, align 8
  %9 = getelementptr inbounds %struct.dsa_notifier_ageing_time_info, %struct.dsa_notifier_ageing_time_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.dsa_notifier_ageing_time_info*, %struct.dsa_notifier_ageing_time_info** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_notifier_ageing_time_info, %struct.dsa_notifier_ageing_time_info* %11, i32 0, i32 1
  %13 = load %struct.switchdev_trans*, %struct.switchdev_trans** %12, align 8
  store %struct.switchdev_trans* %13, %struct.switchdev_trans** %7, align 8
  %14 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %15 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %19 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %25 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %66

31:                                               ; preds = %22, %17
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %33 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %39 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ugt i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %36, %31
  store i32 0, i32* %3, align 4
  br label %66

46:                                               ; preds = %2
  %47 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dsa_switch_fastest_ageing_time(%struct.dsa_switch* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %51 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.dsa_switch*, i32)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %58 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %60, align 8
  %62 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 %61(%struct.dsa_switch* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %56, %45, %42, %28
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i32 @dsa_switch_fastest_ageing_time(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
