; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_register_pm_qos_misc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c_register_pm_qos_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm_qos_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.dentry = type { i32 }

@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@pm_qos_power_fops = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@pm_qos_debug_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm_qos_object*, %struct.dentry*)* @register_pm_qos_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_pm_qos_misc(%struct.pm_qos_object* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.pm_qos_object*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.pm_qos_object* %0, %struct.pm_qos_object** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %6 = load %struct.pm_qos_object*, %struct.pm_qos_object** %3, align 8
  %7 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store i32 %5, i32* %8, align 4
  %9 = load %struct.pm_qos_object*, %struct.pm_qos_object** %3, align 8
  %10 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.pm_qos_object*, %struct.pm_qos_object** %3, align 8
  %13 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.pm_qos_object*, %struct.pm_qos_object** %3, align 8
  %16 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* @pm_qos_power_fops, i32** %17, align 8
  %18 = load %struct.pm_qos_object*, %struct.pm_qos_object** %3, align 8
  %19 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @S_IRUGO, align 4
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = load %struct.pm_qos_object*, %struct.pm_qos_object** %3, align 8
  %24 = bitcast %struct.pm_qos_object* %23 to i8*
  %25 = call i32 @debugfs_create_file(i32 %20, i32 %21, %struct.dentry* %22, i8* %24, i32* @pm_qos_debug_fops)
  %26 = load %struct.pm_qos_object*, %struct.pm_qos_object** %3, align 8
  %27 = getelementptr inbounds %struct.pm_qos_object, %struct.pm_qos_object* %26, i32 0, i32 0
  %28 = call i32 @misc_register(%struct.TYPE_2__* %27)
  ret i32 %28
}

declare dso_local i32 @debugfs_create_file(i32, i32, %struct.dentry*, i8*, i32*) #1

declare dso_local i32 @misc_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
