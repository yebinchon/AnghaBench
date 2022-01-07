; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_create_file_ns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_create_file_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_create_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = icmp ne %struct.kobject* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.kobject*, %struct.kobject** %5, align 8
  %14 = getelementptr inbounds %struct.kobject, %struct.kobject* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.attribute*, %struct.attribute** %6, align 8
  %19 = icmp ne %struct.attribute* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %12, %3
  %22 = phi i1 [ true, %12 ], [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.kobject*, %struct.kobject** %5, align 8
  %31 = call i32 @kobject_get_ownership(%struct.kobject* %30, i32* %8, i32* %9)
  %32 = load %struct.kobject*, %struct.kobject** %5, align 8
  %33 = getelementptr inbounds %struct.kobject, %struct.kobject* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.attribute*, %struct.attribute** %6, align 8
  %36 = load %struct.attribute*, %struct.attribute** %6, align 8
  %37 = getelementptr inbounds %struct.attribute, %struct.attribute* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @sysfs_add_file_mode_ns(i32 %34, %struct.attribute* %35, i32 0, i32 %38, i32 %39, i32 %40, i8* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %29, %26
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kobject_get_ownership(%struct.kobject*, i32*, i32*) #1

declare dso_local i32 @sysfs_add_file_mode_ns(i32, %struct.attribute*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
