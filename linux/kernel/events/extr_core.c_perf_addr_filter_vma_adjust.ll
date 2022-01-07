; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filter_vma_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_addr_filter_vma_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_addr_filter = type { i64, i64 }
%struct.vm_area_struct = type { i64, i64, i64, %struct.file* }
%struct.file = type { i32 }
%struct.perf_addr_filter_range = type { i64, i8* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_addr_filter*, %struct.vm_area_struct*, %struct.perf_addr_filter_range*)* @perf_addr_filter_vma_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_addr_filter_vma_adjust(%struct.perf_addr_filter* %0, %struct.vm_area_struct* %1, %struct.perf_addr_filter_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_addr_filter*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.perf_addr_filter_range*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  store %struct.perf_addr_filter* %0, %struct.perf_addr_filter** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.perf_addr_filter_range* %2, %struct.perf_addr_filter_range** %7, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  store i64 %17, i64* %8, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = shl i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 3
  %25 = load %struct.file*, %struct.file** %24, align 8
  store %struct.file* %25, %struct.file** %10, align 8
  %26 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %5, align 8
  %27 = load %struct.file*, %struct.file** %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @perf_addr_filter_match(%struct.perf_addr_filter* %26, %struct.file* %27, i64 %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

33:                                               ; preds = %3
  %34 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %5, align 8
  %35 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.perf_addr_filter_range*, %struct.perf_addr_filter_range** %7, align 8
  %44 = getelementptr inbounds %struct.perf_addr_filter_range, %struct.perf_addr_filter_range* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %5, align 8
  %47 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %5, align 8
  %51 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  %54 = sub i64 %48, %53
  %55 = call i8* @min(i64 %45, i64 %54)
  %56 = load %struct.perf_addr_filter_range*, %struct.perf_addr_filter_range** %7, align 8
  %57 = getelementptr inbounds %struct.perf_addr_filter_range, %struct.perf_addr_filter_range* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %83

58:                                               ; preds = %33
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %5, align 8
  %63 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  %66 = load i64, i64* %9, align 8
  %67 = sub i64 %65, %66
  %68 = load %struct.perf_addr_filter_range*, %struct.perf_addr_filter_range** %7, align 8
  %69 = getelementptr inbounds %struct.perf_addr_filter_range, %struct.perf_addr_filter_range* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.perf_addr_filter_range*, %struct.perf_addr_filter_range** %7, align 8
  %74 = getelementptr inbounds %struct.perf_addr_filter_range, %struct.perf_addr_filter_range* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %72, %75
  %77 = load %struct.perf_addr_filter*, %struct.perf_addr_filter** %5, align 8
  %78 = getelementptr inbounds %struct.perf_addr_filter, %struct.perf_addr_filter* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @min(i64 %76, i64 %79)
  %81 = load %struct.perf_addr_filter_range*, %struct.perf_addr_filter_range** %7, align 8
  %82 = getelementptr inbounds %struct.perf_addr_filter_range, %struct.perf_addr_filter_range* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %58, %39
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %32
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @perf_addr_filter_match(%struct.perf_addr_filter*, %struct.file*, i64, i64) #1

declare dso_local i8* @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
