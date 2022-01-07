; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_find_vma_exact.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_find_vma_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }
%struct.mm_struct = type { %struct.vm_area_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_area_struct* (%struct.mm_struct*, i64, i64)* @find_vma_exact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_area_struct* @find_vma_exact(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %9, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call %struct.vm_area_struct* @vmacache_find_exact(%struct.mm_struct* %13, i64 %14, i64 %15)
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %8, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %18 = icmp ne %struct.vm_area_struct* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %4, align 8
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 0
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %8, align 8
  br label %25

25:                                               ; preds = %54, %21
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %27 = icmp ne %struct.vm_area_struct* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %54

35:                                               ; preds = %28
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %4, align 8
  br label %59

42:                                               ; preds = %35
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %51 = call i32 @vmacache_update(i64 %49, %struct.vm_area_struct* %50)
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %52, %struct.vm_area_struct** %4, align 8
  br label %59

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 2
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %56, align 8
  store %struct.vm_area_struct* %57, %struct.vm_area_struct** %8, align 8
  br label %25

58:                                               ; preds = %25
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %4, align 8
  br label %59

59:                                               ; preds = %58, %48, %41, %19
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  ret %struct.vm_area_struct* %60
}

declare dso_local %struct.vm_area_struct* @vmacache_find_exact(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @vmacache_update(i64, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
