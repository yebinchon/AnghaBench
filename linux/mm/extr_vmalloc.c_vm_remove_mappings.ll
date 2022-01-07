; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vm_remove_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vm_remove_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32, i32, i32*, i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@VM_FLUSH_RESET_PERMS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@set_direct_map_invalid_noflush = common dso_local global i32 0, align 4
@set_direct_map_default_noflush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_struct*, i32)* @vm_remove_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_remove_mappings(%struct.vm_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.vm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vm_struct* %0, %struct.vm_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i64, i64* @ULONG_MAX, align 8
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %13 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @VM_FLUSH_RESET_PERMS, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %18 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @remove_vm_area(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %71

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 (...) @vm_unmap_aliases()
  br label %71

29:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %57, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %33 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %38 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @page_address(i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @min(i64 %48, i64 %49)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @max(i64 %53, i64 %54)
  store i64 %55, i64* %6, align 8
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %47, %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %62 = load i32, i32* @set_direct_map_invalid_noflush, align 4
  %63 = call i32 @set_area_direct_map(%struct.vm_struct* %61, i32 %62)
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @_vm_unmap_aliases(i64 %64, i64 %65, i32 %66)
  %68 = load %struct.vm_struct*, %struct.vm_struct** %3, align 8
  %69 = load i32, i32* @set_direct_map_default_noflush, align 4
  %70 = call i32 @set_area_direct_map(%struct.vm_struct* %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %27, %23
  ret void
}

declare dso_local i32 @remove_vm_area(i32) #1

declare dso_local i32 @vm_unmap_aliases(...) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @set_area_direct_map(%struct.vm_struct*, i32) #1

declare dso_local i32 @_vm_unmap_aliases(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
