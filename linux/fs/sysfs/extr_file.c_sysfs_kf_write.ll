; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_kf_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_kf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kobject* }
%struct.kobject = type { i32 }
%struct.sysfs_ops = type { i32 (%struct.kobject.0*, i32, i8*, i64)* }
%struct.kobject.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32)* @sysfs_kf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_kf_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sysfs_ops*, align 8
  %11 = alloca %struct.kobject*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %13 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call %struct.sysfs_ops* @sysfs_file_ops(%struct.TYPE_4__* %14)
  store %struct.sysfs_ops* %15, %struct.sysfs_ops** %10, align 8
  %16 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %17 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.kobject*, %struct.kobject** %21, align 8
  store %struct.kobject* %22, %struct.kobject** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

26:                                               ; preds = %4
  %27 = load %struct.sysfs_ops*, %struct.sysfs_ops** %10, align 8
  %28 = getelementptr inbounds %struct.sysfs_ops, %struct.sysfs_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.kobject.0*, i32, i8*, i64)*, i32 (%struct.kobject.0*, i32, i8*, i64)** %28, align 8
  %30 = load %struct.kobject*, %struct.kobject** %11, align 8
  %31 = bitcast %struct.kobject* %30 to %struct.kobject.0*
  %32 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %33 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 %29(%struct.kobject.0* %31, i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %26, %25
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.sysfs_ops* @sysfs_file_ops(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
