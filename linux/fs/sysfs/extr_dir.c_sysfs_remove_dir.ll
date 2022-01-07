; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_dir.c_sysfs_remove_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_dir.c_sysfs_remove_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }

@sysfs_symlink_target_lock = common dso_local global i32 0, align 4
@KERNFS_DIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_remove_dir(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  %4 = load %struct.kobject*, %struct.kobject** %2, align 8
  %5 = getelementptr inbounds %struct.kobject, %struct.kobject* %4, i32 0, i32 0
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  store %struct.kernfs_node* %6, %struct.kernfs_node** %3, align 8
  %7 = call i32 @spin_lock(i32* @sysfs_symlink_target_lock)
  %8 = load %struct.kobject*, %struct.kobject** %2, align 8
  %9 = getelementptr inbounds %struct.kobject, %struct.kobject* %8, i32 0, i32 0
  store %struct.kernfs_node* null, %struct.kernfs_node** %9, align 8
  %10 = call i32 @spin_unlock(i32* @sysfs_symlink_target_lock)
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %12 = icmp ne %struct.kernfs_node* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %15 = call i64 @kernfs_type(%struct.kernfs_node* %14)
  %16 = load i64, i64* @KERNFS_DIR, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %21 = call i32 @kernfs_remove(%struct.kernfs_node* %20)
  br label %22

22:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_remove(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
