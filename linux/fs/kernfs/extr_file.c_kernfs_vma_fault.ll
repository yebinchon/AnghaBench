; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_vma_fault.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_vma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.file* }
%struct.file = type { i32 }
%struct.kernfs_open_file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.vm_fault*)* }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @kernfs_vma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_vma_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca i32, align 4
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
  %19 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %22 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kernfs_get_active(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %20
  %29 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %31 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %33, align 8
  %35 = icmp ne i32 (%struct.vm_fault*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %38 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %40, align 8
  %42 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %43 = call i32 %41(%struct.vm_fault* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %46 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kernfs_put_active(i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %26, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.kernfs_open_file* @kernfs_of(%struct.file*) #1

declare dso_local i32 @kernfs_get_active(i32) #1

declare dso_local i32 @kernfs_put_active(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
