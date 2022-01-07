; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c___compat_only_sysfs_link_entry_to_kobj.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c___compat_only_sysfs_link_entry_to_kobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }

@sysfs_symlink_target_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__compat_only_sysfs_link_entry_to_kobj(%struct.kobject* %0, %struct.kobject* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.kernfs_node*, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobject* %1, %struct.kobject** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call i32 @spin_lock(i32* @sysfs_symlink_target_lock)
  %12 = load %struct.kobject*, %struct.kobject** %6, align 8
  %13 = getelementptr inbounds %struct.kobject, %struct.kobject* %12, i32 0, i32 0
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  store %struct.kernfs_node* %14, %struct.kernfs_node** %8, align 8
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %16 = icmp ne %struct.kernfs_node* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %19 = call i32 @kernfs_get(%struct.kernfs_node* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = call i32 @spin_unlock(i32* @sysfs_symlink_target_lock)
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %23 = icmp ne %struct.kernfs_node* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %69

27:                                               ; preds = %20
  %28 = load %struct.kobject*, %struct.kobject** %6, align 8
  %29 = getelementptr inbounds %struct.kobject, %struct.kobject* %28, i32 0, i32 0
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* %30, i8* %31)
  store %struct.kernfs_node* %32, %struct.kernfs_node** %9, align 8
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %34 = icmp ne %struct.kernfs_node* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %37 = call i32 @kernfs_put(%struct.kernfs_node* %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %27
  %41 = load %struct.kobject*, %struct.kobject** %5, align 8
  %42 = getelementptr inbounds %struct.kobject, %struct.kobject* %41, i32 0, i32 0
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %46 = call %struct.kernfs_node* @kernfs_create_link(%struct.kernfs_node* %43, i8* %44, %struct.kernfs_node* %45)
  store %struct.kernfs_node* %46, %struct.kernfs_node** %10, align 8
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %48 = call i64 @IS_ERR(%struct.kernfs_node* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %52 = call i32 @PTR_ERR(%struct.kernfs_node* %51)
  %53 = load i32, i32* @EEXIST, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.kobject*, %struct.kobject** %5, align 8
  %58 = getelementptr inbounds %struct.kobject, %struct.kobject* %57, i32 0, i32 0
  %59 = load %struct.kernfs_node*, %struct.kernfs_node** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @sysfs_warn_dup(%struct.kernfs_node* %59, i8* %60)
  br label %62

62:                                               ; preds = %56, %50, %40
  %63 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %64 = call i32 @kernfs_put(%struct.kernfs_node* %63)
  %65 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %66 = call i32 @kernfs_put(%struct.kernfs_node* %65)
  %67 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %68 = call i32 @PTR_ERR_OR_ZERO(%struct.kernfs_node* %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %35, %24
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node*, i8*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local %struct.kernfs_node* @kernfs_create_link(%struct.kernfs_node*, i8*, %struct.kernfs_node*) #1

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @sysfs_warn_dup(%struct.kernfs_node*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
