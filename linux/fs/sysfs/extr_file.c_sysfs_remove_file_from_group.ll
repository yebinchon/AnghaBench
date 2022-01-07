; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_remove_file_from_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_remove_file_from_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }
%struct.attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_remove_file_from_group(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = getelementptr inbounds %struct.kobject, %struct.kobject* %11, i32 0, i32 0
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* %13, i8* %14)
  store %struct.kernfs_node* %15, %struct.kernfs_node** %7, align 8
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.kobject*, %struct.kobject** %4, align 8
  %18 = getelementptr inbounds %struct.kobject, %struct.kobject* %17, i32 0, i32 0
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %18, align 8
  store %struct.kernfs_node* %19, %struct.kernfs_node** %7, align 8
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %21 = call i32 @kernfs_get(%struct.kernfs_node* %20)
  br label %22

22:                                               ; preds = %16, %10
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %24 = icmp ne %struct.kernfs_node* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %27 = load %struct.attribute*, %struct.attribute** %5, align 8
  %28 = getelementptr inbounds %struct.attribute, %struct.attribute* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kernfs_remove_by_name(%struct.kernfs_node* %26, i32 %29)
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %32 = call i32 @kernfs_put(%struct.kernfs_node* %31)
  br label %33

33:                                               ; preds = %25, %22
  ret void
}

declare dso_local %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node*, i8*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_remove_by_name(%struct.kernfs_node*, i32) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
