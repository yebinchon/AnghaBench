; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_p4d_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_zap_p4d_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, %struct.zap_details*)* @zap_p4d_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zap_p4d_range(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i32* %2, i64 %3, i64 %4, %struct.zap_details* %5) #0 {
  %7 = alloca %struct.mmu_gather*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.zap_details*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %7, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.zap_details* %5, %struct.zap_details** %12, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i32* @p4d_offset(i32* %15, i64 %16)
  store i32* %17, i32** %13, align 8
  br label %18

18:                                               ; preds = %34, %6
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @p4d_addr_end(i64 %19, i64 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i64 @p4d_none_or_clear_bad(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %34

26:                                               ; preds = %18
  %27 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.zap_details*, %struct.zap_details** %12, align 8
  %33 = call i64 @zap_pud_range(%struct.mmu_gather* %27, %struct.vm_area_struct* %28, i32* %29, i64 %30, i64 %31, %struct.zap_details* %32)
  store i64 %33, i64* %14, align 8
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32*, i32** %13, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %13, align 8
  %37 = load i64, i64* %14, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %18, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %10, align 8
  ret i64 %42
}

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_addr_end(i64, i64) #1

declare dso_local i64 @p4d_none_or_clear_bad(i32*) #1

declare dso_local i64 @zap_pud_range(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, %struct.zap_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
