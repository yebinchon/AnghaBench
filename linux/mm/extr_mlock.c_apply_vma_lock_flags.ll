; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_apply_vma_lock_flags.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_apply_vma_lock_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i32, i64, %struct.vm_area_struct*, %struct.vm_area_struct* }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_LOCKED_CLEAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @apply_vma_lock_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_vma_lock_flags(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @offset_in_page(i64 %15)
  %17 = call i32 @VM_BUG_ON(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @PAGE_ALIGN(i64 %19)
  %21 = icmp ne i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @VM_BUG_ON(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %128

33:                                               ; preds = %3
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %128

38:                                               ; preds = %33
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call %struct.vm_area_struct* @find_vma(i32 %41, i64 %42)
  store %struct.vm_area_struct* %43, %struct.vm_area_struct** %11, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %45 = icmp ne %struct.vm_area_struct* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %38
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %128

55:                                               ; preds = %46
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 4
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %57, align 8
  store %struct.vm_area_struct* %58, %struct.vm_area_struct** %12, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ugt i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  store %struct.vm_area_struct* %65, %struct.vm_area_struct** %12, align 8
  br label %66

66:                                               ; preds = %64, %55
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %125, %66
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @VM_LOCKED_CLEAR_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = load i64, i64* %9, align 8
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %83, %68
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @mlock_fixup(%struct.vm_area_struct* %86, %struct.vm_area_struct** %12, i64 %87, i64 %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %126

94:                                               ; preds = %85
  %95 = load i64, i64* %10, align 8
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %101, %94
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %126

110:                                              ; preds = %105
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 3
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %112, align 8
  store %struct.vm_area_struct* %113, %struct.vm_area_struct** %11, align 8
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %115 = icmp ne %struct.vm_area_struct* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %118 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %110
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %13, align 4
  br label %126

125:                                              ; preds = %116
  br label %68

126:                                              ; preds = %122, %109, %93
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %52, %37, %30
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

declare dso_local i32 @mlock_fixup(%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
