; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_print_vma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_print_vma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.file* }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s%s[%lx+%lx]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_vma_addr(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %5, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = call i32 @down_read_trylock(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %19, i64 %20)
  store %struct.vm_area_struct* %21, %struct.vm_area_struct** %6, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %23 = icmp ne %struct.vm_area_struct* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 2
  %27 = load %struct.file*, %struct.file** %26, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load %struct.file*, %struct.file** %31, align 8
  store %struct.file* %32, %struct.file** %7, align 8
  %33 = load i32, i32* @GFP_NOWAIT, align 4
  %34 = call i64 @__get_free_page(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %29
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = call i8* @file_path(%struct.file* %39, i8* %40, i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @kbasename(i8* %49)
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %50, i64 %53, i64 %60)
  %62 = load i8*, i8** %8, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = call i32 @free_page(i64 %63)
  br label %65

65:                                               ; preds = %47, %29
  br label %66

66:                                               ; preds = %65, %24, %18
  %67 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %68 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %67, i32 0, i32 0
  %69 = call i32 @up_read(i32* %68)
  br label %70

70:                                               ; preds = %66, %17
  ret void
}

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @file_path(%struct.file*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @printk(i8*, i8*, i32, i64, i64) #1

declare dso_local i32 @kbasename(i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
