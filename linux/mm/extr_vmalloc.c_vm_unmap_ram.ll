; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vm_unmap_ram.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_vm_unmap_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap_area = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VMALLOC_START = common dso_local global i64 0, align 8
@VMALLOC_END = common dso_local global i64 0, align 8
@VMAP_MAX_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_unmap_ram(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmap_area*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = shl i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = call i32 (...) @might_sleep()
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @VMALLOC_START, align 8
  %22 = icmp ult i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @VMALLOC_END, align 8
  %27 = icmp ugt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @PAGE_ALIGNED(i64 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @VMAP_MAX_ALLOC, align 4
  %38 = icmp ule i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @debug_check_no_locks_freed(i8* %43, i64 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @vb_free(i8* %46, i64 %47)
  br label %71

49:                                               ; preds = %2
  %50 = load i64, i64* %6, align 8
  %51 = call %struct.vmap_area* @find_vmap_area(i64 %50)
  store %struct.vmap_area* %51, %struct.vmap_area** %7, align 8
  %52 = load %struct.vmap_area*, %struct.vmap_area** %7, align 8
  %53 = icmp ne %struct.vmap_area* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.vmap_area*, %struct.vmap_area** %7, align 8
  %58 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.vmap_area*, %struct.vmap_area** %7, align 8
  %62 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.vmap_area*, %struct.vmap_area** %7, align 8
  %65 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  %68 = call i32 @debug_check_no_locks_freed(i8* %60, i64 %67)
  %69 = load %struct.vmap_area*, %struct.vmap_area** %7, align 8
  %70 = call i32 @free_unmap_vmap_area(%struct.vmap_area* %69)
  br label %71

71:                                               ; preds = %49, %42
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PAGE_ALIGNED(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @debug_check_no_locks_freed(i8*, i64) #1

declare dso_local i32 @vb_free(i8*, i64) #1

declare dso_local %struct.vmap_area* @find_vmap_area(i64) #1

declare dso_local i32 @free_unmap_vmap_area(%struct.vmap_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
