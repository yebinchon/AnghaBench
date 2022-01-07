; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_show_iface_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_show_iface_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_hard_iface = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"disabling\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"inactive\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"active\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"enabling\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"not in use\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @batadv_show_iface_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_show_iface_status(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = call %struct.net_device* @batadv_kobj_to_netdev(%struct.kobject* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.attribute*, %struct.attribute** %6, align 8
  %14 = call i32 @batadv_sysfs_deprecated(%struct.attribute* %13)
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device* %15)
  store %struct.batadv_hard_iface* %16, %struct.batadv_hard_iface** %9, align 8
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %18 = icmp ne %struct.batadv_hard_iface* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %22 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %37 [
    i32 128, label %24
    i32 131, label %27
    i32 132, label %30
    i32 129, label %33
    i32 130, label %36
  ]

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %10, align 4
  br label %40

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %10, align 4
  br label %40

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %10, align 4
  br label %40

33:                                               ; preds = %20
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* %10, align 4
  br label %40

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %20, %36
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %33, %30, %27, %24
  %41 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %42 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.net_device* @batadv_kobj_to_netdev(%struct.kobject*) #1

declare dso_local i32 @batadv_sysfs_deprecated(%struct.attribute*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
