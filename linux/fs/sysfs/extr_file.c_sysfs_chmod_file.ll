; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_chmod_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_chmod_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.kernfs_node = type { i32 }
%struct.iattr = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_chmod_file(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.iattr, align 4
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = getelementptr inbounds %struct.kobject, %struct.kobject* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.attribute*, %struct.attribute** %6, align 8
  %15 = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.kernfs_node* @kernfs_find_and_get(i32 %13, i32 %16)
  store %struct.kernfs_node* %17, %struct.kernfs_node** %8, align 8
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %19 = icmp ne %struct.kernfs_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %42

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @S_IALLUGO, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %28 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IALLUGO, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = or i32 %26, %32
  %34 = getelementptr inbounds %struct.iattr, %struct.iattr* %9, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @ATTR_MODE, align 4
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %38 = call i32 @kernfs_setattr(%struct.kernfs_node* %37, %struct.iattr* %9)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %40 = call i32 @kernfs_put(%struct.kernfs_node* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %23, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.kernfs_node* @kernfs_find_and_get(i32, i32) #1

declare dso_local i32 @kernfs_setattr(%struct.kernfs_node*, %struct.iattr*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
