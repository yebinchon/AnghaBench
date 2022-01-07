; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_sysfs_merge_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_sysfs_merge_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute_group = type { %struct.attribute**, i32 }
%struct.attribute = type { i32, i32 }
%struct.kernfs_node = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_merge_group(%struct.kobject* %0, %struct.attribute_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute_group*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.attribute**, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute_group* %1, %struct.attribute_group** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.kobject*, %struct.kobject** %4, align 8
  %13 = getelementptr inbounds %struct.kobject, %struct.kobject* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.attribute_group*, %struct.attribute_group** %5, align 8
  %16 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.kernfs_node* @kernfs_find_and_get(i32 %14, i32 %17)
  store %struct.kernfs_node* %18, %struct.kernfs_node** %6, align 8
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %20 = icmp ne %struct.kernfs_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  %25 = load %struct.kobject*, %struct.kobject** %4, align 8
  %26 = call i32 @kobject_get_ownership(%struct.kobject* %25, i32* %7, i32* %8)
  store i32 0, i32* %11, align 4
  %27 = load %struct.attribute_group*, %struct.attribute_group** %5, align 8
  %28 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %27, i32 0, i32 0
  %29 = load %struct.attribute**, %struct.attribute*** %28, align 8
  store %struct.attribute** %29, %struct.attribute*** %10, align 8
  br label %30

30:                                               ; preds = %51, %24
  %31 = load %struct.attribute**, %struct.attribute*** %10, align 8
  %32 = load %struct.attribute*, %struct.attribute** %31, align 8
  %33 = icmp ne %struct.attribute* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %56

40:                                               ; preds = %38
  %41 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %42 = load %struct.attribute**, %struct.attribute*** %10, align 8
  %43 = load %struct.attribute*, %struct.attribute** %42, align 8
  %44 = load %struct.attribute**, %struct.attribute*** %10, align 8
  %45 = load %struct.attribute*, %struct.attribute** %44, align 8
  %46 = getelementptr inbounds %struct.attribute, %struct.attribute* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @sysfs_add_file_mode_ns(%struct.kernfs_node* %41, %struct.attribute* %43, i32 0, i32 %47, i32 %48, i32 %49, i32* null)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load %struct.attribute**, %struct.attribute*** %10, align 8
  %55 = getelementptr inbounds %struct.attribute*, %struct.attribute** %54, i32 1
  store %struct.attribute** %55, %struct.attribute*** %10, align 8
  br label %30

56:                                               ; preds = %38
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %11, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %66 = load %struct.attribute**, %struct.attribute*** %10, align 8
  %67 = getelementptr inbounds %struct.attribute*, %struct.attribute** %66, i32 -1
  store %struct.attribute** %67, %struct.attribute*** %10, align 8
  %68 = load %struct.attribute*, %struct.attribute** %67, align 8
  %69 = getelementptr inbounds %struct.attribute, %struct.attribute* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @kernfs_remove_by_name(%struct.kernfs_node* %65, i32 %70)
  br label %60

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %75 = call i32 @kernfs_put(%struct.kernfs_node* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.kernfs_node* @kernfs_find_and_get(i32, i32) #1

declare dso_local i32 @kobject_get_ownership(%struct.kobject*, i32*, i32*) #1

declare dso_local i32 @sysfs_add_file_mode_ns(%struct.kernfs_node*, %struct.attribute*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kernfs_remove_by_name(%struct.kernfs_node*, i32) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
