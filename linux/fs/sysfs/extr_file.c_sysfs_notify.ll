; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_notify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_notify(%struct.kobject* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.kobject*, %struct.kobject** %4, align 8
  %10 = getelementptr inbounds %struct.kobject, %struct.kobject* %9, i32 0, i32 0
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  store %struct.kernfs_node* %11, %struct.kernfs_node** %7, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %13 = icmp ne %struct.kernfs_node* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* %18, i8* %19)
  store %struct.kernfs_node* %20, %struct.kernfs_node** %7, align 8
  br label %24

21:                                               ; preds = %14, %3
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %23 = call i32 @kernfs_get(%struct.kernfs_node* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %26 = icmp ne %struct.kernfs_node* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* %31, i8* %32)
  store %struct.kernfs_node* %33, %struct.kernfs_node** %8, align 8
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %35 = call i32 @kernfs_put(%struct.kernfs_node* %34)
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  store %struct.kernfs_node* %36, %struct.kernfs_node** %7, align 8
  br label %37

37:                                               ; preds = %30, %27, %24
  %38 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %39 = icmp ne %struct.kernfs_node* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %42 = call i32 @kernfs_notify(%struct.kernfs_node* %41)
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %44 = call i32 @kernfs_put(%struct.kernfs_node* %43)
  br label %45

45:                                               ; preds = %40, %37
  ret void
}

declare dso_local %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node*, i8*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_notify(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
