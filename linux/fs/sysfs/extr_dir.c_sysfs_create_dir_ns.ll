; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_dir.c_sysfs_create_dir_ns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_dir.c_sysfs_create_dir_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.kobject = type { %struct.kernfs_node*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kernfs_node* }

@EINVAL = common dso_local global i32 0, align 4
@sysfs_root_kn = common dso_local global %struct.kernfs_node* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_create_dir_ns(%struct.kobject* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.kobject*, %struct.kobject** %4, align 8
  %11 = icmp ne %struct.kobject* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.kobject*, %struct.kobject** %4, align 8
  %21 = getelementptr inbounds %struct.kobject, %struct.kobject* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.kobject*, %struct.kobject** %4, align 8
  %26 = getelementptr inbounds %struct.kobject, %struct.kobject* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %28, align 8
  store %struct.kernfs_node* %29, %struct.kernfs_node** %6, align 8
  br label %32

30:                                               ; preds = %19
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** @sysfs_root_kn, align 8
  store %struct.kernfs_node* %31, %struct.kernfs_node** %6, align 8
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %34 = icmp ne %struct.kernfs_node* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %75

38:                                               ; preds = %32
  %39 = load %struct.kobject*, %struct.kobject** %4, align 8
  %40 = call i32 @kobject_get_ownership(%struct.kobject* %39, i32* %8, i32* %9)
  %41 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %42 = load %struct.kobject*, %struct.kobject** %4, align 8
  %43 = call i32 @kobject_name(%struct.kobject* %42)
  %44 = load i32, i32* @S_IRWXU, align 4
  %45 = load i32, i32* @S_IRUGO, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @S_IXUGO, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.kobject*, %struct.kobject** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call %struct.kernfs_node* @kernfs_create_dir_ns(%struct.kernfs_node* %41, i32 %43, i32 %48, i32 %49, i32 %50, %struct.kobject* %51, i8* %52)
  store %struct.kernfs_node* %53, %struct.kernfs_node** %7, align 8
  %54 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %55 = call i64 @IS_ERR(%struct.kernfs_node* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %38
  %58 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %59 = call i32 @PTR_ERR(%struct.kernfs_node* %58)
  %60 = load i32, i32* @EEXIST, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %65 = load %struct.kobject*, %struct.kobject** %4, align 8
  %66 = call i32 @kobject_name(%struct.kobject* %65)
  %67 = call i32 @sysfs_warn_dup(%struct.kernfs_node* %64, i32 %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %70 = call i32 @PTR_ERR(%struct.kernfs_node* %69)
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %38
  %72 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %73 = load %struct.kobject*, %struct.kobject** %4, align 8
  %74 = getelementptr inbounds %struct.kobject, %struct.kobject* %73, i32 0, i32 0
  store %struct.kernfs_node* %72, %struct.kernfs_node** %74, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %68, %35, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kobject_get_ownership(%struct.kobject*, i32*, i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_create_dir_ns(%struct.kernfs_node*, i32, i32, i32, i32, %struct.kobject*, i8*) #1

declare dso_local i32 @kobject_name(%struct.kobject*) #1

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @sysfs_warn_dup(%struct.kernfs_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
