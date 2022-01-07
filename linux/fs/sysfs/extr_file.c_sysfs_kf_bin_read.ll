; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_kf_bin_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_kf_bin_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.bin_attribute* }
%struct.TYPE_4__ = type { %struct.kobject* }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 (i32, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* }
%struct.TYPE_6__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i64)* @sysfs_kf_bin_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_kf_bin_read(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca %struct.kobject*, align 8
  %12 = alloca i64, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %14 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.bin_attribute*, %struct.bin_attribute** %16, align 8
  store %struct.bin_attribute* %17, %struct.bin_attribute** %10, align 8
  %18 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %19 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.kobject*, %struct.kobject** %23, align 8
  store %struct.kobject* %24, %struct.kobject** %11, align 8
  %25 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %26 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_6__* @file_inode(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

34:                                               ; preds = %4
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %74

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %12, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %55 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %54, i32 0, i32 0
  %56 = load i32 (i32, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (i32, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %55, align 8
  %57 = icmp ne i32 (i32, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %74

61:                                               ; preds = %53
  %62 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %63 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %62, i32 0, i32 0
  %64 = load i32 (i32, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (i32, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %63, align 8
  %65 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %66 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.kobject*, %struct.kobject** %11, align 8
  %69 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 %64(i32 %67, %struct.kobject* %68, %struct.bin_attribute* %69, i8* %70, i64 %71, i64 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %61, %58, %41, %33
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_6__* @file_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
