; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_del.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32*, i64, %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }
%struct.kobj_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kobject_del(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kobj_type*, align 8
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  %5 = load %struct.kobject*, %struct.kobject** %2, align 8
  %6 = icmp ne %struct.kobject* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.kobject*, %struct.kobject** %2, align 8
  %10 = getelementptr inbounds %struct.kobject, %struct.kobject* %9, i32 0, i32 2
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  store %struct.kernfs_node* %11, %struct.kernfs_node** %3, align 8
  %12 = load %struct.kobject*, %struct.kobject** %2, align 8
  %13 = call %struct.kobj_type* @get_ktype(%struct.kobject* %12)
  store %struct.kobj_type* %13, %struct.kobj_type** %4, align 8
  %14 = load %struct.kobj_type*, %struct.kobj_type** %4, align 8
  %15 = icmp ne %struct.kobj_type* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.kobject*, %struct.kobject** %2, align 8
  %18 = load %struct.kobj_type*, %struct.kobj_type** %4, align 8
  %19 = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sysfs_remove_groups(%struct.kobject* %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %8
  %23 = load %struct.kobject*, %struct.kobject** %2, align 8
  %24 = call i32 @sysfs_remove_dir(%struct.kobject* %23)
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %26 = call i32 @sysfs_put(%struct.kernfs_node* %25)
  %27 = load %struct.kobject*, %struct.kobject** %2, align 8
  %28 = getelementptr inbounds %struct.kobject, %struct.kobject* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.kobject*, %struct.kobject** %2, align 8
  %30 = call i32 @kobj_kset_leave(%struct.kobject* %29)
  %31 = load %struct.kobject*, %struct.kobject** %2, align 8
  %32 = getelementptr inbounds %struct.kobject, %struct.kobject* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kobject_put(i32* %33)
  %35 = load %struct.kobject*, %struct.kobject** %2, align 8
  %36 = getelementptr inbounds %struct.kobject, %struct.kobject* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %22, %7
  ret void
}

declare dso_local %struct.kobj_type* @get_ktype(%struct.kobject*) #1

declare dso_local i32 @sysfs_remove_groups(%struct.kobject*, i32) #1

declare dso_local i32 @sysfs_remove_dir(%struct.kobject*) #1

declare dso_local i32 @sysfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @kobj_kset_leave(%struct.kobject*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
