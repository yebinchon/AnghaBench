; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_symlink.c_sysfs_do_create_link_sd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_symlink.c_sysfs_do_create_link_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.kobject = type { %struct.kernfs_node* }

@EINVAL = common dso_local global i32 0, align 4
@sysfs_symlink_target_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kobject*, i8*, i32)* @sysfs_do_create_link_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_do_create_link_sd(%struct.kernfs_node* %0, %struct.kobject* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %6, align 8
  store %struct.kobject* %1, %struct.kobject** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.kernfs_node* null, %struct.kernfs_node** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %16 = icmp ne %struct.kernfs_node* %15, null
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ true, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %72

26:                                               ; preds = %18
  %27 = call i32 @spin_lock(i32* @sysfs_symlink_target_lock)
  %28 = load %struct.kobject*, %struct.kobject** %7, align 8
  %29 = getelementptr inbounds %struct.kobject, %struct.kobject* %28, i32 0, i32 0
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %29, align 8
  %31 = icmp ne %struct.kernfs_node* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.kobject*, %struct.kobject** %7, align 8
  %34 = getelementptr inbounds %struct.kobject, %struct.kobject* %33, i32 0, i32 0
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %34, align 8
  store %struct.kernfs_node* %35, %struct.kernfs_node** %11, align 8
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %37 = call i32 @kernfs_get(%struct.kernfs_node* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = call i32 @spin_unlock(i32* @sysfs_symlink_target_lock)
  %40 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %41 = icmp ne %struct.kernfs_node* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %72

45:                                               ; preds = %38
  %46 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %49 = call %struct.kernfs_node* @kernfs_create_link(%struct.kernfs_node* %46, i8* %47, %struct.kernfs_node* %48)
  store %struct.kernfs_node* %49, %struct.kernfs_node** %10, align 8
  %50 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %51 = call i32 @kernfs_put(%struct.kernfs_node* %50)
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %53 = call i32 @IS_ERR(%struct.kernfs_node* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %72

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %61 = call i32 @PTR_ERR(%struct.kernfs_node* %60)
  %62 = load i32, i32* @EEXIST, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @sysfs_warn_dup(%struct.kernfs_node* %66, i8* %67)
  br label %69

69:                                               ; preds = %65, %59, %56
  %70 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %71 = call i32 @PTR_ERR(%struct.kernfs_node* %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %55, %42, %23
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_create_link(%struct.kernfs_node*, i8*, %struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @sysfs_warn_dup(%struct.kernfs_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
