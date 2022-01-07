; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mprotect.c_change_protection_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mprotect.c_change_protection_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, i64, i64, i32, i32, i32)* @change_protection_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @change_protection_range(%struct.vm_area_struct* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mm_struct*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %13, align 8
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp uge i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32* @pgd_offset(%struct.mm_struct* %27, i64 %28)
  store i32* %29, i32** %14, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @flush_cache_range(%struct.vm_area_struct* %30, i64 %31, i64 %32)
  %34 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %35 = call i32 @inc_tlb_flush_pending(%struct.mm_struct* %34)
  br label %36

36:                                               ; preds = %55, %6
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @pgd_addr_end(i64 %37, i64 %38)
  store i64 %39, i64* %15, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i64 @pgd_none_or_clear_bad(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %55

44:                                               ; preds = %36
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @change_p4d_range(%struct.vm_area_struct* %45, i32* %46, i64 %47, i64 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i64, i64* %17, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %17, align 8
  br label %55

55:                                               ; preds = %44, %43
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %14, align 8
  %58 = load i64, i64* %15, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %36, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %17, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @flush_tlb_range(%struct.vm_area_struct* %66, i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %72 = call i32 @dec_tlb_flush_pending(%struct.mm_struct* %71)
  %73 = load i64, i64* %17, align 8
  ret i64 %73
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @inc_tlb_flush_pending(%struct.mm_struct*) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i64 @change_p4d_range(%struct.vm_area_struct*, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @dec_tlb_flush_pending(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
