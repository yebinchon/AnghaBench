; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_mesh_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_mesh_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_store_mesh_work = type { i32, i32, %struct.net_device* }

@IFNAMSIZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"Invalid parameter for 'mesh_iface' setting received: interface name too long '%s'\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@batadv_store_mesh_iface_work = common dso_local global i32 0, align 4
@batadv_event_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @batadv_store_mesh_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @batadv_store_mesh_iface(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.batadv_store_mesh_work*, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.kobject*, %struct.kobject** %6, align 8
  %13 = call %struct.net_device* @batadv_kobj_to_netdev(%struct.kobject* %12)
  store %struct.net_device* %13, %struct.net_device** %10, align 8
  %14 = load %struct.attribute*, %struct.attribute** %7, align 8
  %15 = call i32 @batadv_sysfs_deprecated(%struct.attribute* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %23, %4
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = load i64, i64* @IFNAMSIZ, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %66

38:                                               ; preds = %28
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.batadv_store_mesh_work* @kmalloc(i32 16, i32 %39)
  store %struct.batadv_store_mesh_work* %40, %struct.batadv_store_mesh_work** %11, align 8
  %41 = load %struct.batadv_store_mesh_work*, %struct.batadv_store_mesh_work** %11, align 8
  %42 = icmp ne %struct.batadv_store_mesh_work* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @ENOMEM, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %66

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  %48 = call i32 @dev_hold(%struct.net_device* %47)
  %49 = load %struct.batadv_store_mesh_work*, %struct.batadv_store_mesh_work** %11, align 8
  %50 = getelementptr inbounds %struct.batadv_store_mesh_work, %struct.batadv_store_mesh_work* %49, i32 0, i32 0
  %51 = load i32, i32* @batadv_store_mesh_iface_work, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %10, align 8
  %54 = load %struct.batadv_store_mesh_work*, %struct.batadv_store_mesh_work** %11, align 8
  %55 = getelementptr inbounds %struct.batadv_store_mesh_work, %struct.batadv_store_mesh_work* %54, i32 0, i32 2
  store %struct.net_device* %53, %struct.net_device** %55, align 8
  %56 = load %struct.batadv_store_mesh_work*, %struct.batadv_store_mesh_work** %11, align 8
  %57 = getelementptr inbounds %struct.batadv_store_mesh_work, %struct.batadv_store_mesh_work* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strscpy(i32 %58, i8* %59, i32 4)
  %61 = load i32, i32* @batadv_event_workqueue, align 4
  %62 = load %struct.batadv_store_mesh_work*, %struct.batadv_store_mesh_work** %11, align 8
  %63 = getelementptr inbounds %struct.batadv_store_mesh_work, %struct.batadv_store_mesh_work* %62, i32 0, i32 0
  %64 = call i32 @queue_work(i32 %61, i32* %63)
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %46, %43, %33
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local %struct.net_device* @batadv_kobj_to_netdev(%struct.kobject*) #1

declare dso_local i32 @batadv_sysfs_deprecated(%struct.attribute*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.batadv_store_mesh_work* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
