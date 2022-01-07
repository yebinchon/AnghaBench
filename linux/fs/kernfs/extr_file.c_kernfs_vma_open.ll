; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_vma_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_vma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.file* }
%struct.file = type { i32 }
%struct.kernfs_open_file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @kernfs_vma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernfs_vma_open(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.kernfs_open_file*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 0
  %7 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %7, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.kernfs_open_file* @kernfs_of(%struct.file* %8)
  store %struct.kernfs_open_file* %9, %struct.kernfs_open_file** %4, align 8
  %10 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %11 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %17 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kernfs_get_active(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %42

22:                                               ; preds = %15
  %23 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %24 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %26, align 8
  %28 = icmp ne i32 (%struct.vm_area_struct*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %31 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %33, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %36 = call i32 %34(%struct.vm_area_struct* %35)
  br label %37

37:                                               ; preds = %29, %22
  %38 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %4, align 8
  %39 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @kernfs_put_active(i32 %40)
  br label %42

42:                                               ; preds = %37, %21, %14
  ret void
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
