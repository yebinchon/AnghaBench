; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_shmem.c_shmem_zero_setup.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_shmem.c_shmem_zero_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, i32, i32*, %struct.file* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"dev/zero\00", align 1
@shmem_vm_ops = common dso_local global i32 0, align 4
@CONFIG_TRANSPARENT_HUGE_PAGECACHE = common dso_local global i32 0, align 4
@HPAGE_PMD_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shmem_zero_setup(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.file* @shmem_kernel_file_setup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  store %struct.file* %17, %struct.file** %4, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = call i64 @IS_ERR(%struct.file* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.file* %22)
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 4
  %27 = load %struct.file*, %struct.file** %26, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 4
  %32 = load %struct.file*, %struct.file** %31, align 8
  %33 = call i32 @fput(%struct.file* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 4
  store %struct.file* %35, %struct.file** %37, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 3
  store i32* @shmem_vm_ops, i32** %39, align 8
  %40 = load i32, i32* @CONFIG_TRANSPARENT_HUGE_PAGECACHE, align 4
  %41 = call i64 @IS_ENABLED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %34
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HPAGE_PMD_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = add nsw i32 %46, %48
  %50 = load i32, i32* @HPAGE_PMD_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @HPAGE_PMD_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @khugepaged_enter(%struct.vm_area_struct* %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %43, %34
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.file* @shmem_kernel_file_setup(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @khugepaged_enter(%struct.vm_area_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
