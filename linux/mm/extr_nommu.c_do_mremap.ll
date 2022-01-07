; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_do_mremap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_do_mremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@MREMAP_FIXED = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EFAULT = common dso_local global i64 0, align 8
@VM_MAYSHARE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64)* @do_mremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_mremap(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @PAGE_ALIGN(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @PAGE_ALIGN(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %5
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %6, align 8
  br label %107

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @offset_in_page(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %6, align 8
  br label %107

32:                                               ; preds = %25
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @MREMAP_FIXED, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %6, align 8
  br label %107

44:                                               ; preds = %37, %32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call %struct.vm_area_struct* @find_vma_exact(i32 %47, i64 %48, i64 %49)
  store %struct.vm_area_struct* %50, %struct.vm_area_struct** %12, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %52 = icmp ne %struct.vm_area_struct* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %6, align 8
  br label %107

56:                                               ; preds = %44
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %62, %63
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i64, i64* @EFAULT, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %6, align 8
  br label %107

69:                                               ; preds = %56
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @VM_MAYSHARE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i64, i64* @EPERM, align 8
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %6, align 8
  br label %107

79:                                               ; preds = %69
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 3
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %85, %90
  %92 = icmp ugt i64 %80, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i64, i64* @ENOMEM, align 8
  %95 = sub nsw i64 0, %94
  store i64 %95, i64* %6, align 8
  br label %107

96:                                               ; preds = %79
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %99, %100
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %96, %93, %76, %66, %53, %41, %29, %22
  %108 = load i64, i64* %6, align 8
  ret i64 %108
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma_exact(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
