; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_create_bin_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_create_bin_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.bin_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_create_bin_file(%struct.kobject* %0, %struct.bin_attribute* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.bin_attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.bin_attribute* %1, %struct.bin_attribute** %5, align 8
  %8 = load %struct.kobject*, %struct.kobject** %4, align 8
  %9 = icmp ne %struct.kobject* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = getelementptr inbounds %struct.kobject, %struct.kobject* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %17 = icmp ne %struct.bin_attribute* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %10, %2
  %20 = phi i1 [ true, %10 ], [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load %struct.kobject*, %struct.kobject** %4, align 8
  %29 = call i32 @kobject_get_ownership(%struct.kobject* %28, i32* %6, i32* %7)
  %30 = load %struct.kobject*, %struct.kobject** %4, align 8
  %31 = getelementptr inbounds %struct.kobject, %struct.kobject* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %34 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %33, i32 0, i32 0
  %35 = load %struct.bin_attribute*, %struct.bin_attribute** %5, align 8
  %36 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @sysfs_add_file_mode_ns(i32 %32, %struct.TYPE_2__* %34, i32 1, i32 %38, i32 %39, i32 %40, i32* null)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %27, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kobject_get_ownership(%struct.kobject*, i32*, i32*) #1

declare dso_local i32 @sysfs_add_file_mode_ns(i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
