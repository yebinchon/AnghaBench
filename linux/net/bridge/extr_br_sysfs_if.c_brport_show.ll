; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_brport_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_brport_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.brport_attribute = type { i32 (%struct.net_bridge_port*, i8*)* }
%struct.net_bridge_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @brport_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brport_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.brport_attribute*, align 8
  %9 = alloca %struct.net_bridge_port*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.attribute*, %struct.attribute** %6, align 8
  %11 = call %struct.brport_attribute* @to_brport_attr(%struct.attribute* %10)
  store %struct.brport_attribute* %11, %struct.brport_attribute** %8, align 8
  %12 = load %struct.kobject*, %struct.kobject** %5, align 8
  %13 = call %struct.net_bridge_port* @kobj_to_brport(%struct.kobject* %12)
  store %struct.net_bridge_port* %13, %struct.net_bridge_port** %9, align 8
  %14 = load %struct.brport_attribute*, %struct.brport_attribute** %8, align 8
  %15 = getelementptr inbounds %struct.brport_attribute, %struct.brport_attribute* %14, i32 0, i32 0
  %16 = load i32 (%struct.net_bridge_port*, i8*)*, i32 (%struct.net_bridge_port*, i8*)** %15, align 8
  %17 = icmp ne i32 (%struct.net_bridge_port*, i8*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.brport_attribute*, %struct.brport_attribute** %8, align 8
  %23 = getelementptr inbounds %struct.brport_attribute, %struct.brport_attribute* %22, i32 0, i32 0
  %24 = load i32 (%struct.net_bridge_port*, i8*)*, i32 (%struct.net_bridge_port*, i8*)** %23, align 8
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 %24(%struct.net_bridge_port* %25, i8* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.brport_attribute* @to_brport_attr(%struct.attribute*) #1

declare dso_local %struct.net_bridge_port* @kobj_to_brport(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
