; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_vlan_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_vlan_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i64 }
%struct.dsa_notifier_vlan_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.dsa_notifier_vlan_info*)* @dsa_switch_vlan_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_vlan_match(%struct.dsa_switch* %0, i32 %1, %struct.dsa_notifier_vlan_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsa_notifier_vlan_info*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dsa_notifier_vlan_info* %2, %struct.dsa_notifier_vlan_info** %7, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dsa_notifier_vlan_info*, %struct.dsa_notifier_vlan_info** %7, align 8
  %12 = getelementptr inbounds %struct.dsa_notifier_vlan_info, %struct.dsa_notifier_vlan_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dsa_notifier_vlan_info*, %struct.dsa_notifier_vlan_info** %7, align 8
  %18 = getelementptr inbounds %struct.dsa_notifier_vlan_info, %struct.dsa_notifier_vlan_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %29

22:                                               ; preds = %15, %3
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @dsa_is_dsa_port(%struct.dsa_switch* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %27, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @dsa_is_dsa_port(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
