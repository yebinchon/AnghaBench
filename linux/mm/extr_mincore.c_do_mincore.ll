; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mincore.c_do_mincore.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mincore.c_do_mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@mincore_walk_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i8*)* @do_mincore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_mincore(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.vm_area_struct* @find_vma(i32 %14, i64 %15)
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %8, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %18 = icmp ne %struct.vm_area_struct* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %3
  %26 = load i64, i64* @ENOMEM, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %70

28:                                               ; preds = %19
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = add i64 %32, %35
  %37 = call i64 @min(i32 %31, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %39 = call i32 @can_do_mincore(%struct.vm_area_struct* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %28
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %42, %43
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = call i64 @DIV_ROUND_UP(i64 %44, i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @memset(i8* %47, i32 1, i64 %48)
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %4, align 8
  br label %70

51:                                               ; preds = %28
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @walk_page_range(i32 %54, i64 %55, i64 %56, i32* @mincore_walk_ops, i8* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %4, align 8
  br label %70

64:                                               ; preds = %51
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %5, align 8
  %67 = sub i64 %65, %66
  %68 = load i64, i64* @PAGE_SHIFT, align 8
  %69 = lshr i64 %67, %68
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %64, %61, %41, %25
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @can_do_mincore(%struct.vm_area_struct*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @walk_page_range(i32, i64, i64, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
