; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_task_statm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_task_statm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64, i64, i64, i64, i32 }

@MM_FILEPAGES = common dso_local global i32 0, align 4
@MM_SHMEMPAGES = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MM_ANONPAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @task_statm(%struct.mm_struct* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %12 = load i32, i32* @MM_FILEPAGES, align 4
  %13 = call i64 @get_mm_counter(%struct.mm_struct* %11, i32 %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %15 = load i32, i32* @MM_SHMEMPAGES, align 4
  %16 = call i64 @get_mm_counter(%struct.mm_struct* %14, i32 %15)
  %17 = add i64 %13, %16
  %18 = load i64*, i64** %7, align 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @PAGE_ALIGN(i32 %21)
  %23 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = and i64 %25, %26
  %28 = sub i64 %22, %27
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  %31 = load i64*, i64** %8, align 8
  store i64 %30, i64* %31, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %43 = load i32, i32* @MM_ANONPAGES, align 4
  %44 = call i64 @get_mm_counter(%struct.mm_struct* %42, i32 %43)
  %45 = add i64 %41, %44
  %46 = load i64*, i64** %10, align 8
  store i64 %45, i64* %46, align 8
  %47 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  ret i64 %49
}

declare dso_local i64 @get_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
