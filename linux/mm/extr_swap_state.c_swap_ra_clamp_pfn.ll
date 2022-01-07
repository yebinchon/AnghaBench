; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c_swap_ra_clamp_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c_swap_ra_clamp_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64 }

@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i64, i64, i64*, i64*)* @swap_ra_clamp_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_ra_clamp_pfn(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @PFN_DOWN(i64 %16)
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @PMD_MASK, align 8
  %20 = and i64 %18, %19
  %21 = call i32 @PFN_DOWN(i64 %20)
  %22 = call i64 @max3(i64 %13, i32 %17, i32 %21)
  %23 = load i64*, i64** %11, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @PFN_DOWN(i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @PMD_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @PMD_SIZE, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @PFN_DOWN(i64 %33)
  %35 = call i64 @min3(i64 %24, i32 %28, i32 %34)
  %36 = load i64*, i64** %12, align 8
  store i64 %35, i64* %36, align 8
  ret void
}

declare dso_local i64 @max3(i64, i32, i32) #1

declare dso_local i32 @PFN_DOWN(i64) #1

declare dso_local i64 @min3(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
