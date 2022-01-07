; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_count_mm_mlocked_page_nr.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_count_mm_mlocked_page_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, i64, i32, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@VM_LOCKED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*, i64, i64)* @count_mm_mlocked_page_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_mm_mlocked_page_nr(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = icmp eq %struct.mm_struct* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %4, align 8
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %16, i64 %17)
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %7, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = icmp eq %struct.vm_area_struct* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 0
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %7, align 8
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %95, %25
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %28 = icmp ne %struct.vm_area_struct* %27, null
  br i1 %28, label %29, label %99

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %95

36:                                               ; preds = %29
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %99

45:                                               ; preds = %36
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VM_LOCKED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %45
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %58, %52
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %67, %68
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %75, %76
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %77, %80
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %8, align 8
  br label %99

84:                                               ; preds = %66
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %87, %90
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %8, align 8
  br label %94

94:                                               ; preds = %84, %45
  br label %95

95:                                               ; preds = %94, %35
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %96, i32 0, i32 3
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %97, align 8
  store %struct.vm_area_struct* %98, %struct.vm_area_struct** %7, align 8
  br label %26

99:                                               ; preds = %74, %44, %26
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @PAGE_SHIFT, align 8
  %102 = lshr i64 %100, %101
  ret i64 %102
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
