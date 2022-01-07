; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_dir.c_sysfs_move_dir_ns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_dir.c_sysfs_move_dir_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.kobject = type { %struct.kernfs_node* }

@sysfs_root_kn = common dso_local global %struct.kernfs_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_move_dir_ns(%struct.kobject* %0, %struct.kobject* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobject* %1, %struct.kobject** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.kobject*, %struct.kobject** %4, align 8
  %10 = getelementptr inbounds %struct.kobject, %struct.kobject* %9, i32 0, i32 0
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  store %struct.kernfs_node* %11, %struct.kernfs_node** %7, align 8
  %12 = load %struct.kobject*, %struct.kobject** %5, align 8
  %13 = icmp ne %struct.kobject* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.kobject*, %struct.kobject** %5, align 8
  %16 = getelementptr inbounds %struct.kobject, %struct.kobject* %15, i32 0, i32 0
  %17 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %18 = icmp ne %struct.kernfs_node* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.kobject*, %struct.kobject** %5, align 8
  %21 = getelementptr inbounds %struct.kobject, %struct.kobject* %20, i32 0, i32 0
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %21, align 8
  br label %25

23:                                               ; preds = %14, %3
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** @sysfs_root_kn, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi %struct.kernfs_node* [ %22, %19 ], [ %24, %23 ]
  store %struct.kernfs_node* %26, %struct.kernfs_node** %8, align 8
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %30 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @kernfs_rename_ns(%struct.kernfs_node* %27, %struct.kernfs_node* %28, i32 %31, i8* %32)
  ret i32 %33
}

declare dso_local i32 @kernfs_rename_ns(%struct.kernfs_node*, %struct.kernfs_node*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
