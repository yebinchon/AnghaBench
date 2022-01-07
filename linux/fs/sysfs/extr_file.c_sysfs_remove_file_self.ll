; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_remove_file_self.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_remove_file_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }
%struct.attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_remove_file_self(%struct.kobject* %0, %struct.attribute* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  %9 = load %struct.kobject*, %struct.kobject** %4, align 8
  %10 = getelementptr inbounds %struct.kobject, %struct.kobject* %9, i32 0, i32 0
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  store %struct.kernfs_node* %11, %struct.kernfs_node** %6, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %13 = load %struct.attribute*, %struct.attribute** %5, align 8
  %14 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* %12, i32 %15)
  store %struct.kernfs_node* %16, %struct.kernfs_node** %7, align 8
  %17 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %18 = icmp ne %struct.kernfs_node* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %26 = call i32 @kernfs_remove_self(%struct.kernfs_node* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %28 = call i32 @kernfs_put(%struct.kernfs_node* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kernfs_remove_self(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
