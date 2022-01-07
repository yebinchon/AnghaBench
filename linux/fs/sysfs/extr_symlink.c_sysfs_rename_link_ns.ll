; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_symlink.c_sysfs_rename_link_ns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_symlink.c_sysfs_rename_link_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kobject* }
%struct.kobject = type { %struct.kernfs_node* }

@sysfs_root_kn = common dso_local global %struct.kernfs_node* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERNFS_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_rename_link_ns(%struct.kobject* %0, %struct.kobject* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.kernfs_node*, align 8
  %12 = alloca %struct.kernfs_node*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobject* %1, %struct.kobject** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store %struct.kernfs_node* null, %struct.kernfs_node** %12, align 8
  store i8* null, i8** %13, align 8
  %15 = load %struct.kobject*, %struct.kobject** %6, align 8
  %16 = icmp ne %struct.kobject* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** @sysfs_root_kn, align 8
  store %struct.kernfs_node* %18, %struct.kernfs_node** %11, align 8
  br label %23

19:                                               ; preds = %5
  %20 = load %struct.kobject*, %struct.kobject** %6, align 8
  %21 = getelementptr inbounds %struct.kobject, %struct.kobject* %20, i32 0, i32 0
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %21, align 8
  store %struct.kernfs_node* %22, %struct.kernfs_node** %11, align 8
  br label %23

23:                                               ; preds = %19, %17
  %24 = load %struct.kobject*, %struct.kobject** %7, align 8
  %25 = getelementptr inbounds %struct.kobject, %struct.kobject* %24, i32 0, i32 0
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %25, align 8
  %27 = icmp ne %struct.kernfs_node* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.kobject*, %struct.kobject** %7, align 8
  %30 = getelementptr inbounds %struct.kobject, %struct.kobject* %29, i32 0, i32 0
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %30, align 8
  %32 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %13, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %14, align 4
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* %37, i8* %38, i8* %39)
  store %struct.kernfs_node* %40, %struct.kernfs_node** %12, align 8
  %41 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %42 = icmp ne %struct.kernfs_node* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %68

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %48 = call i64 @kernfs_type(%struct.kernfs_node* %47)
  %49 = load i64, i64* @KERNFS_LINK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %68

52:                                               ; preds = %44
  %53 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %54 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.kobject*, %struct.kobject** %57, align 8
  %59 = load %struct.kobject*, %struct.kobject** %7, align 8
  %60 = icmp ne %struct.kobject* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %68

62:                                               ; preds = %52
  %63 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %64 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @kernfs_rename_ns(%struct.kernfs_node* %63, %struct.kernfs_node* %64, i8* %65, i8* %66)
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %62, %61, %51, %43
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %70 = call i32 @kernfs_put(%struct.kernfs_node* %69)
  %71 = load i32, i32* %14, align 4
  ret i32 %71
}

declare dso_local %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node*, i8*, i8*) #1

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_rename_ns(%struct.kernfs_node*, %struct.kernfs_node*, i8*, i8*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
