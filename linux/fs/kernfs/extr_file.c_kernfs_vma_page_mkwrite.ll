; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_vma_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_vma_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.file* }
%struct.file = type { i32 }
%struct.kernfs_open_file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.vm_fault*)* }

@VM_FAULT_SIGBUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_fault*)* @kernfs_vma_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kernfs_vma_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %4, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.kernfs_open_file* @kernfs_of(%struct.file* %12)
  store %struct.kernfs_open_file* %13, %struct.kernfs_open_file** %5, align 8
  %14 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %15 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* @VM_FAULT_SIGBUS, align 8
  store i64 %19, i64* %2, align 8
  br label %52

20:                                               ; preds = %1
  %21 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %22 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kernfs_get_active(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* @VM_FAULT_SIGBUS, align 8
  store i64 %27, i64* %2, align 8
  br label %52

28:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  %29 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %30 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64 (%struct.vm_fault*)*, i64 (%struct.vm_fault*)** %32, align 8
  %34 = icmp ne i64 (%struct.vm_fault*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %37 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64 (%struct.vm_fault*)*, i64 (%struct.vm_fault*)** %39, align 8
  %41 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %42 = call i64 %40(%struct.vm_fault* %41)
  store i64 %42, i64* %6, align 8
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = call i32 @file_update_time(%struct.file* %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %48 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @kernfs_put_active(i32 %49)
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %46, %26, %18
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local %struct.kernfs_open_file* @kernfs_of(%struct.file*) #1

declare dso_local i32 @kernfs_get_active(i32) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @kernfs_put_active(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
