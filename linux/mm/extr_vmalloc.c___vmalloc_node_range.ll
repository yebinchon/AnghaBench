; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c___vmalloc_node_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c___vmalloc_node_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_ALLOC = common dso_local global i64 0, align 8
@VM_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"vmalloc: allocation failure: %lu bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__vmalloc_node_range(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i64 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.vm_struct*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @PAGE_ALIGN(i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %9
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = call i64 (...) @totalram_pages()
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %9
  br label %69

35:                                               ; preds = %28
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @VM_ALLOC, align 8
  %39 = load i64, i64* @VM_UNINITIALIZED, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* %17, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i8*, i8** %19, align 8
  %48 = call %struct.vm_struct* @__get_vm_area_node(i64 %36, i64 %37, i64 %42, i64 %43, i64 %44, i32 %45, i32 %46, i8* %47)
  store %struct.vm_struct* %48, %struct.vm_struct** %20, align 8
  %49 = load %struct.vm_struct*, %struct.vm_struct** %20, align 8
  %50 = icmp ne %struct.vm_struct* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %35
  br label %69

52:                                               ; preds = %35
  %53 = load %struct.vm_struct*, %struct.vm_struct** %20, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i8* @__vmalloc_area_node(%struct.vm_struct* %53, i32 %54, i32 %55, i32 %56)
  store i8* %57, i8** %21, align 8
  %58 = load i8*, i8** %21, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i8* null, i8** %10, align 8
  br label %73

61:                                               ; preds = %52
  %62 = load %struct.vm_struct*, %struct.vm_struct** %20, align 8
  %63 = call i32 @clear_vm_uninitialized_flag(%struct.vm_struct* %62)
  %64 = load %struct.vm_struct*, %struct.vm_struct** %20, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @kmemleak_vmalloc(%struct.vm_struct* %64, i64 %65, i32 %66)
  %68 = load i8*, i8** %21, align 8
  store i8* %68, i8** %10, align 8
  br label %73

69:                                               ; preds = %51, %34
  %70 = load i32, i32* %15, align 4
  %71 = load i64, i64* %22, align 8
  %72 = call i32 @warn_alloc(i32 %70, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %71)
  store i8* null, i8** %10, align 8
  br label %73

73:                                               ; preds = %69, %61, %60
  %74 = load i8*, i8** %10, align 8
  ret i8* %74
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @totalram_pages(...) #1

declare dso_local %struct.vm_struct* @__get_vm_area_node(i64, i64, i64, i64, i64, i32, i32, i8*) #1

declare dso_local i8* @__vmalloc_area_node(%struct.vm_struct*, i32, i32, i32) #1

declare dso_local i32 @clear_vm_uninitialized_flag(%struct.vm_struct*) #1

declare dso_local i32 @kmemleak_vmalloc(%struct.vm_struct*, i64, i32) #1

declare dso_local i32 @warn_alloc(i32, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
