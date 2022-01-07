; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_type = type { i32 }
%struct.kobj_ns_type_operations = type { i64 }

@KOBJ_NS_TYPE_NONE = common dso_local global i64 0, align 8
@KOBJ_NS_TYPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*)* @create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dir(%struct.kobject* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.kobj_type*, align 8
  %5 = alloca %struct.kobj_ns_type_operations*, align 8
  %6 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  %7 = load %struct.kobject*, %struct.kobject** %3, align 8
  %8 = call %struct.kobj_type* @get_ktype(%struct.kobject* %7)
  store %struct.kobj_type* %8, %struct.kobj_type** %4, align 8
  %9 = load %struct.kobject*, %struct.kobject** %3, align 8
  %10 = load %struct.kobject*, %struct.kobject** %3, align 8
  %11 = call i32 @kobject_namespace(%struct.kobject* %10)
  %12 = call i32 @sysfs_create_dir_ns(%struct.kobject* %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %79

17:                                               ; preds = %1
  %18 = load %struct.kobject*, %struct.kobject** %3, align 8
  %19 = call i32 @populate_dir(%struct.kobject* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.kobject*, %struct.kobject** %3, align 8
  %24 = call i32 @sysfs_remove_dir(%struct.kobject* %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %79

26:                                               ; preds = %17
  %27 = load %struct.kobj_type*, %struct.kobj_type** %4, align 8
  %28 = icmp ne %struct.kobj_type* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.kobject*, %struct.kobject** %3, align 8
  %31 = load %struct.kobj_type*, %struct.kobj_type** %4, align 8
  %32 = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sysfs_create_groups(%struct.kobject* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.kobject*, %struct.kobject** %3, align 8
  %39 = call i32 @sysfs_remove_dir(%struct.kobject* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.kobject*, %struct.kobject** %3, align 8
  %44 = getelementptr inbounds %struct.kobject, %struct.kobject* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sysfs_get(i32 %45)
  %47 = load %struct.kobject*, %struct.kobject** %3, align 8
  %48 = call %struct.kobj_ns_type_operations* @kobj_child_ns_ops(%struct.kobject* %47)
  store %struct.kobj_ns_type_operations* %48, %struct.kobj_ns_type_operations** %5, align 8
  %49 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %5, align 8
  %50 = icmp ne %struct.kobj_ns_type_operations* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %42
  %52 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %5, align 8
  %53 = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @KOBJ_NS_TYPE_NONE, align 8
  %56 = icmp sle i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %5, align 8
  %60 = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @KOBJ_NS_TYPES, align 8
  %63 = icmp sge i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %5, align 8
  %67 = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @kobj_ns_type_registered(i64 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.kobject*, %struct.kobject** %3, align 8
  %75 = getelementptr inbounds %struct.kobject, %struct.kobject* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sysfs_enable_ns(i32 %76)
  br label %78

78:                                               ; preds = %51, %42
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %37, %22, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.kobj_type* @get_ktype(%struct.kobject*) #1

declare dso_local i32 @sysfs_create_dir_ns(%struct.kobject*, i32) #1

declare dso_local i32 @kobject_namespace(%struct.kobject*) #1

declare dso_local i32 @populate_dir(%struct.kobject*) #1

declare dso_local i32 @sysfs_remove_dir(%struct.kobject*) #1

declare dso_local i32 @sysfs_create_groups(%struct.kobject*, i32) #1

declare dso_local i32 @sysfs_get(i32) #1

declare dso_local %struct.kobj_ns_type_operations* @kobj_child_ns_ops(%struct.kobject*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kobj_ns_type_registered(i64) #1

declare dso_local i32 @sysfs_enable_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
