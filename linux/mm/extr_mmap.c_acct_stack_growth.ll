; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_acct_stack_growth.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_acct_stack_growth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, %struct.mm_struct* }
%struct.mm_struct = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@RLIMIT_STACK = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@VM_GROWSUP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64)* @acct_stack_growth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acct_stack_growth(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 3
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %8, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @may_expand_vm(%struct.mm_struct* %15, i32 %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %100

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @RLIMIT_STACK, align 4
  %28 = call i64 @rlimit(i32 %27)
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %100

33:                                               ; preds = %25
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VM_LOCKED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %47 = call i64 @rlimit(i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = load i64, i64* %11, align 8
  %50 = lshr i64 %49, %48
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load i32, i32* @CAP_IPC_LOCK, align 4
  %56 = call i32 @capable(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %100

61:                                               ; preds = %54, %40
  br label %62

62:                                               ; preds = %61, %33
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @VM_GROWSUP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  br label %79

73:                                               ; preds = %62
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = sub i64 %76, %77
  br label %79

79:                                               ; preds = %73, %69
  %80 = phi i64 [ %72, %69 ], [ %78, %73 ]
  store i64 %80, i64* %9, align 8
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 3
  %83 = load %struct.mm_struct*, %struct.mm_struct** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @is_hugepage_only_range(%struct.mm_struct* %83, i64 %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @EFAULT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %100

91:                                               ; preds = %79
  %92 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @security_vm_enough_memory_mm(%struct.mm_struct* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %96, %88, %58, %30, %22
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @may_expand_vm(%struct.mm_struct*, i32, i64) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @is_hugepage_only_range(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @security_vm_enough_memory_mm(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
