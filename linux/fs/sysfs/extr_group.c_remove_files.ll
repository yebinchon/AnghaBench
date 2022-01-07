; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_remove_files.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.attribute_group = type { %struct.bin_attribute**, %struct.attribute** }
%struct.bin_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kernfs_node*, %struct.attribute_group*)* @remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_files(%struct.kernfs_node* %0, %struct.attribute_group* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.attribute_group*, align 8
  %5 = alloca %struct.attribute**, align 8
  %6 = alloca %struct.bin_attribute**, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  store %struct.attribute_group* %1, %struct.attribute_group** %4, align 8
  %7 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %8 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %7, i32 0, i32 1
  %9 = load %struct.attribute**, %struct.attribute*** %8, align 8
  %10 = icmp ne %struct.attribute** %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %13 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %12, i32 0, i32 1
  %14 = load %struct.attribute**, %struct.attribute*** %13, align 8
  store %struct.attribute** %14, %struct.attribute*** %5, align 8
  br label %15

15:                                               ; preds = %26, %11
  %16 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %17 = load %struct.attribute*, %struct.attribute** %16, align 8
  %18 = icmp ne %struct.attribute* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %21 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %22 = load %struct.attribute*, %struct.attribute** %21, align 8
  %23 = getelementptr inbounds %struct.attribute, %struct.attribute* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kernfs_remove_by_name(%struct.kernfs_node* %20, i32 %24)
  br label %26

26:                                               ; preds = %19
  %27 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %28 = getelementptr inbounds %struct.attribute*, %struct.attribute** %27, i32 1
  store %struct.attribute** %28, %struct.attribute*** %5, align 8
  br label %15

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %32 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %31, i32 0, i32 0
  %33 = load %struct.bin_attribute**, %struct.bin_attribute*** %32, align 8
  %34 = icmp ne %struct.bin_attribute** %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %37 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %36, i32 0, i32 0
  %38 = load %struct.bin_attribute**, %struct.bin_attribute*** %37, align 8
  store %struct.bin_attribute** %38, %struct.bin_attribute*** %6, align 8
  br label %39

39:                                               ; preds = %51, %35
  %40 = load %struct.bin_attribute**, %struct.bin_attribute*** %6, align 8
  %41 = load %struct.bin_attribute*, %struct.bin_attribute** %40, align 8
  %42 = icmp ne %struct.bin_attribute* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %45 = load %struct.bin_attribute**, %struct.bin_attribute*** %6, align 8
  %46 = load %struct.bin_attribute*, %struct.bin_attribute** %45, align 8
  %47 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kernfs_remove_by_name(%struct.kernfs_node* %44, i32 %49)
  br label %51

51:                                               ; preds = %43
  %52 = load %struct.bin_attribute**, %struct.bin_attribute*** %6, align 8
  %53 = getelementptr inbounds %struct.bin_attribute*, %struct.bin_attribute** %52, i32 1
  store %struct.bin_attribute** %53, %struct.bin_attribute*** %6, align 8
  br label %39

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %30
  ret void
}

declare dso_local i32 @kernfs_remove_by_name(%struct.kernfs_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
