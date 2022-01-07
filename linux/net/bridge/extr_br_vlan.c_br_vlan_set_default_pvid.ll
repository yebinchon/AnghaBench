; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_set_default_pvid.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_vlan_set_default_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64 }

@VLAN_VID_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BROPT_VLAN_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Please disable vlan filtering to change default_pvid\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_vlan_set_default_pvid(%struct.net_bridge* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @VLAN_VID_MASK, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %18 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %35

22:                                               ; preds = %15
  %23 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %24 = load i32, i32* @BROPT_VLAN_ENABLED, align 4
  %25 = call i64 @br_opt_get(%struct.net_bridge* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 @pr_info_once(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @__br_vlan_set_default_pvid(%struct.net_bridge* %32, i64 %33, i32* null)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %27, %21
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @pr_info_once(i8*) #1

declare dso_local i32 @__br_vlan_set_default_pvid(%struct.net_bridge*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
