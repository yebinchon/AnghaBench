; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64 (%struct.file*, i64, i64, i64, i64)*, align 8
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %11, align 8
  %17 = call i64 @arch_mmap_check(i64 %14, i64 %15, i64 %16)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* %13, align 8
  store i64 %21, i64* %6, align 8
  br label %100

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @TASK_SIZE, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %6, align 8
  br label %100

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %33, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* %34, i64 (%struct.file*, i64, i64, i64, i64)** %12, align 8
  %35 = load %struct.file*, %struct.file** %7, align 8
  %36 = icmp ne %struct.file* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %29
  %38 = load %struct.file*, %struct.file** %7, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i64 (%struct.file*, i64, i64, i64, i64)**
  %43 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %42, align 8
  %44 = icmp ne i64 (%struct.file*, i64, i64, i64, i64)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i64 (%struct.file*, i64, i64, i64, i64)**
  %51 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %50, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* %51, i64 (%struct.file*, i64, i64, i64, i64)** %12, align 8
  br label %52

52:                                               ; preds = %45, %37
  br label %60

53:                                               ; preds = %29
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @MAP_SHARED, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i64 0, i64* %10, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* @shmem_get_unmapped_area, i64 (%struct.file*, i64, i64, i64, i64)** %12, align 8
  br label %59

59:                                               ; preds = %58, %53
  br label %60

60:                                               ; preds = %59, %52
  %61 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %12, align 8
  %62 = load %struct.file*, %struct.file** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i64 %61(%struct.file* %62, i64 %63, i64 %64, i64 %65, i64 %66)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i64 @IS_ERR_VALUE(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %6, align 8
  br label %100

73:                                               ; preds = %60
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @TASK_SIZE, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub i64 %75, %76
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i64, i64* @ENOMEM, align 8
  %81 = sub i64 0, %80
  store i64 %81, i64* %6, align 8
  br label %100

82:                                               ; preds = %73
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @offset_in_page(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* @EINVAL, align 8
  %88 = sub i64 0, %87
  store i64 %88, i64* %6, align 8
  br label %100

89:                                               ; preds = %82
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @security_mmap_addr(i64 %90)
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i64, i64* %13, align 8
  br label %98

96:                                               ; preds = %89
  %97 = load i64, i64* %8, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i64 [ %95, %94 ], [ %97, %96 ]
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %98, %86, %79, %71, %26, %20
  %101 = load i64, i64* %6, align 8
  ret i64 %101
}

declare dso_local i64 @arch_mmap_check(i64, i64, i64) #1

declare dso_local i64 @shmem_get_unmapped_area(%struct.file*, i64, i64, i64, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i64 @security_mmap_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
