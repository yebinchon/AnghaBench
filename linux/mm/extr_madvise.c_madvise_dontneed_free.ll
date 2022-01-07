; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_dontneed_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_dontneed_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MADV_DONTNEED = common dso_local global i32 0, align 4
@MADV_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32)* @madvise_dontneed_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_dontneed_free(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.vm_area_struct**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %13 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  store %struct.vm_area_struct* %12, %struct.vm_area_struct** %13, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = call i32 @can_madv_lru_vma(%struct.vm_area_struct* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %6, align 8
  br label %96

20:                                               ; preds = %5
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @userfaultfd_remove(%struct.vm_area_struct* %21, i64 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %75, label %26

26:                                               ; preds = %20
  %27 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @down_read(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_3__* %35, i64 %36)
  store %struct.vm_area_struct* %37, %struct.vm_area_struct** %7, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %39 = icmp ne %struct.vm_area_struct* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = load i64, i64* @ENOMEM, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %6, align 8
  br label %96

43:                                               ; preds = %26
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* @ENOMEM, align 8
  %51 = sub nsw i64 0, %50
  store i64 %51, i64* %6, align 8
  br label %96

52:                                               ; preds = %43
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %54 = call i32 @can_madv_lru_vma(%struct.vm_area_struct* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* @EINVAL, align 8
  %58 = sub nsw i64 0, %57
  store i64 %58, i64* %6, align 8
  br label %96

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp uge i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @VM_WARN_ON(i32 %73)
  br label %75

75:                                               ; preds = %69, %20
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @MADV_DONTNEED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i64 @madvise_dontneed_single_vma(%struct.vm_area_struct* %80, i64 %81, i64 %82)
  store i64 %83, i64* %6, align 8
  br label %96

84:                                               ; preds = %75
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @MADV_FREE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @madvise_free_single_vma(%struct.vm_area_struct* %89, i64 %90, i64 %91)
  store i64 %92, i64* %6, align 8
  br label %96

93:                                               ; preds = %84
  %94 = load i64, i64* @EINVAL, align 8
  %95 = sub nsw i64 0, %94
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %93, %88, %79, %56, %49, %40, %17
  %97 = load i64, i64* %6, align 8
  ret i64 %97
}

declare dso_local i32 @can_madv_lru_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @userfaultfd_remove(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i64 @madvise_dontneed_single_vma(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i64 @madvise_free_single_vma(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
