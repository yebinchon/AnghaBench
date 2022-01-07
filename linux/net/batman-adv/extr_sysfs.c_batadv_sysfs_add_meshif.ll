; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_sysfs_add_meshif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_sysfs_add_meshif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_attribute = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kobject }
%struct.kobject = type { i32 }
%struct.batadv_priv = type { i32* }

@BATADV_SYSFS_IF_MESH_SUBDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't add sysfs directory: %s/%s\0A\00", align 1
@batadv_mesh_attrs = common dso_local global %struct.batadv_attribute** null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't add sysfs file: %s/%s/%s\0A\00", align 1
@KOBJ_REMOVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_sysfs_add_meshif(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_attribute**, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.kobject* %10, %struct.kobject** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.batadv_priv* %12, %struct.batadv_priv** %5, align 8
  %13 = load i32, i32* @BATADV_SYSFS_IF_MESH_SUBDIR, align 4
  %14 = load %struct.kobject*, %struct.kobject** %4, align 8
  %15 = call i32* @kobject_create_and_add(i32 %13, %struct.kobject* %14)
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %17 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BATADV_SYSFS_IF_MESH_SUBDIR, align 4
  %28 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @batadv_err(%struct.net_device* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %95

29:                                               ; preds = %1
  %30 = load %struct.batadv_attribute**, %struct.batadv_attribute*** @batadv_mesh_attrs, align 8
  store %struct.batadv_attribute** %30, %struct.batadv_attribute*** %6, align 8
  br label %31

31:                                               ; preds = %58, %29
  %32 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %6, align 8
  %33 = load %struct.batadv_attribute*, %struct.batadv_attribute** %32, align 8
  %34 = icmp ne %struct.batadv_attribute* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %37 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %6, align 8
  %40 = load %struct.batadv_attribute*, %struct.batadv_attribute** %39, align 8
  %41 = getelementptr inbounds %struct.batadv_attribute, %struct.batadv_attribute* %40, i32 0, i32 0
  %42 = call i32 @sysfs_create_file(i32* %38, %struct.TYPE_5__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %35
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BATADV_SYSFS_IF_MESH_SUBDIR, align 4
  %51 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %6, align 8
  %52 = load %struct.batadv_attribute*, %struct.batadv_attribute** %51, align 8
  %53 = getelementptr inbounds %struct.batadv_attribute, %struct.batadv_attribute* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @batadv_err(%struct.net_device* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, i32 %55)
  br label %62

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %6, align 8
  %60 = getelementptr inbounds %struct.batadv_attribute*, %struct.batadv_attribute** %59, i32 1
  store %struct.batadv_attribute** %60, %struct.batadv_attribute*** %6, align 8
  br label %31

61:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %98

62:                                               ; preds = %45
  %63 = load %struct.batadv_attribute**, %struct.batadv_attribute*** @batadv_mesh_attrs, align 8
  store %struct.batadv_attribute** %63, %struct.batadv_attribute*** %6, align 8
  br label %64

64:                                               ; preds = %76, %62
  %65 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %6, align 8
  %66 = load %struct.batadv_attribute*, %struct.batadv_attribute** %65, align 8
  %67 = icmp ne %struct.batadv_attribute* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %70 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %6, align 8
  %73 = load %struct.batadv_attribute*, %struct.batadv_attribute** %72, align 8
  %74 = getelementptr inbounds %struct.batadv_attribute, %struct.batadv_attribute* %73, i32 0, i32 0
  %75 = call i32 @sysfs_remove_file(i32* %71, %struct.TYPE_5__* %74)
  br label %76

76:                                               ; preds = %68
  %77 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %6, align 8
  %78 = getelementptr inbounds %struct.batadv_attribute*, %struct.batadv_attribute** %77, i32 1
  store %struct.batadv_attribute** %78, %struct.batadv_attribute*** %6, align 8
  br label %64

79:                                               ; preds = %64
  %80 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %81 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @KOBJ_REMOVE, align 4
  %84 = call i32 @kobject_uevent(i32* %82, i32 %83)
  %85 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %86 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @kobject_del(i32* %87)
  %89 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %90 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @kobject_put(i32* %91)
  %93 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %94 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %79, %22
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %61
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kobject_create_and_add(i32, %struct.kobject*) #1

declare dso_local i32 @batadv_err(%struct.net_device*, i8*, i32, i32, ...) #1

declare dso_local i32 @sysfs_create_file(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @sysfs_remove_file(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @kobject_del(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
