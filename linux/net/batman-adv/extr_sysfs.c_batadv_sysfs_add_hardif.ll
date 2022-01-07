; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_sysfs_add_hardif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_sysfs_add_hardif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_attribute = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.kobject = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kobject }

@BATADV_SYSFS_IF_BAT_SUBDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't add sysfs directory: %s/%s\0A\00", align 1
@batadv_batman_attrs = common dso_local global %struct.batadv_attribute** null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't add sysfs file: %s/%s/%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_sysfs_add_hardif(%struct.kobject** %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject**, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.batadv_attribute**, align 8
  %8 = alloca i32, align 4
  store %struct.kobject** %0, %struct.kobject*** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.kobject* %11, %struct.kobject** %6, align 8
  %12 = load i32, i32* @BATADV_SYSFS_IF_BAT_SUBDIR, align 4
  %13 = load %struct.kobject*, %struct.kobject** %6, align 8
  %14 = call %struct.kobject* @kobject_create_and_add(i32 %12, %struct.kobject* %13)
  %15 = load %struct.kobject**, %struct.kobject*** %4, align 8
  store %struct.kobject* %14, %struct.kobject** %15, align 8
  %16 = load %struct.kobject**, %struct.kobject*** %4, align 8
  %17 = load %struct.kobject*, %struct.kobject** %16, align 8
  %18 = icmp ne %struct.kobject* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BATADV_SYSFS_IF_BAT_SUBDIR, align 4
  %25 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @batadv_err(%struct.net_device* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %75

26:                                               ; preds = %2
  %27 = load %struct.batadv_attribute**, %struct.batadv_attribute*** @batadv_batman_attrs, align 8
  store %struct.batadv_attribute** %27, %struct.batadv_attribute*** %7, align 8
  br label %28

28:                                               ; preds = %54, %26
  %29 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %7, align 8
  %30 = load %struct.batadv_attribute*, %struct.batadv_attribute** %29, align 8
  %31 = icmp ne %struct.batadv_attribute* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load %struct.kobject**, %struct.kobject*** %4, align 8
  %34 = load %struct.kobject*, %struct.kobject** %33, align 8
  %35 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %7, align 8
  %36 = load %struct.batadv_attribute*, %struct.batadv_attribute** %35, align 8
  %37 = getelementptr inbounds %struct.batadv_attribute, %struct.batadv_attribute* %36, i32 0, i32 0
  %38 = call i32 @sysfs_create_file(%struct.kobject* %34, %struct.TYPE_5__* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BATADV_SYSFS_IF_BAT_SUBDIR, align 4
  %47 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %7, align 8
  %48 = load %struct.batadv_attribute*, %struct.batadv_attribute** %47, align 8
  %49 = getelementptr inbounds %struct.batadv_attribute, %struct.batadv_attribute* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @batadv_err(%struct.net_device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %51)
  br label %58

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %7, align 8
  %56 = getelementptr inbounds %struct.batadv_attribute*, %struct.batadv_attribute** %55, i32 1
  store %struct.batadv_attribute** %56, %struct.batadv_attribute*** %7, align 8
  br label %28

57:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %78

58:                                               ; preds = %41
  %59 = load %struct.batadv_attribute**, %struct.batadv_attribute*** @batadv_batman_attrs, align 8
  store %struct.batadv_attribute** %59, %struct.batadv_attribute*** %7, align 8
  br label %60

60:                                               ; preds = %71, %58
  %61 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %7, align 8
  %62 = load %struct.batadv_attribute*, %struct.batadv_attribute** %61, align 8
  %63 = icmp ne %struct.batadv_attribute* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.kobject**, %struct.kobject*** %4, align 8
  %66 = load %struct.kobject*, %struct.kobject** %65, align 8
  %67 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %7, align 8
  %68 = load %struct.batadv_attribute*, %struct.batadv_attribute** %67, align 8
  %69 = getelementptr inbounds %struct.batadv_attribute, %struct.batadv_attribute* %68, i32 0, i32 0
  %70 = call i32 @sysfs_remove_file(%struct.kobject* %66, %struct.TYPE_5__* %69)
  br label %71

71:                                               ; preds = %64
  %72 = load %struct.batadv_attribute**, %struct.batadv_attribute*** %7, align 8
  %73 = getelementptr inbounds %struct.batadv_attribute*, %struct.batadv_attribute** %72, i32 1
  store %struct.batadv_attribute** %73, %struct.batadv_attribute*** %7, align 8
  br label %60

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %19
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %57
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.kobject* @kobject_create_and_add(i32, %struct.kobject*) #1

declare dso_local i32 @batadv_err(%struct.net_device*, i8*, i32, i32, ...) #1

declare dso_local i32 @sysfs_create_file(%struct.kobject*, %struct.TYPE_5__*) #1

declare dso_local i32 @sysfs_remove_file(%struct.kobject*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
