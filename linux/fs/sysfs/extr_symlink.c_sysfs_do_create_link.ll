; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_symlink.c_sysfs_do_create_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_symlink.c_sysfs_do_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.kobject = type { %struct.kernfs_node* }

@sysfs_root_kn = common dso_local global %struct.kernfs_node* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobject*, i8*, i32)* @sysfs_do_create_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_do_create_link(%struct.kobject* %0, %struct.kobject* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kernfs_node*, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobject* %1, %struct.kobject** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.kernfs_node* null, %struct.kernfs_node** %10, align 8
  %11 = load %struct.kobject*, %struct.kobject** %6, align 8
  %12 = icmp ne %struct.kobject* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** @sysfs_root_kn, align 8
  store %struct.kernfs_node* %14, %struct.kernfs_node** %10, align 8
  br label %19

15:                                               ; preds = %4
  %16 = load %struct.kobject*, %struct.kobject** %6, align 8
  %17 = getelementptr inbounds %struct.kobject, %struct.kobject* %16, i32 0, i32 0
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %17, align 8
  store %struct.kernfs_node* %18, %struct.kernfs_node** %10, align 8
  br label %19

19:                                               ; preds = %15, %13
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %21 = icmp ne %struct.kernfs_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %27 = load %struct.kobject*, %struct.kobject** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @sysfs_do_create_link_sd(%struct.kernfs_node* %26, %struct.kobject* %27, i8* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @sysfs_do_create_link_sd(%struct.kernfs_node*, %struct.kobject*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
