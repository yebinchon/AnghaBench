; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_remove.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, %struct.file* }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@VM_LOCKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64)* @madvise_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_remove(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %13, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VM_LOCKED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %105

23:                                               ; preds = %4
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 3
  %26 = load %struct.file*, %struct.file** %25, align 8
  store %struct.file* %26, %struct.file** %12, align 8
  %27 = load %struct.file*, %struct.file** %12, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.file*, %struct.file** %12, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.file*, %struct.file** %12, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34, %29, %23
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %105

44:                                               ; preds = %34
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @VM_SHARED, align 4
  %49 = load i32, i32* @VM_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = load i32, i32* @VM_SHARED, align 4
  %53 = load i32, i32* @VM_WRITE, align 4
  %54 = or i32 %52, %53
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i64, i64* @EACCES, align 8
  %58 = sub nsw i64 0, %57
  store i64 %58, i64* %5, align 8
  br label %105

59:                                               ; preds = %44
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = trunc i64 %64 to i32
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @PAGE_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = add nsw i32 %65, %71
  store i32 %72, i32* %10, align 4
  %73 = load %struct.file*, %struct.file** %12, align 8
  %74 = call i32 @get_file(%struct.file* %73)
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @userfaultfd_remove(%struct.vm_area_struct* %75, i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %59
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @up_read(i32* %84)
  br label %86

86:                                               ; preds = %80, %59
  %87 = load %struct.file*, %struct.file** %12, align 8
  %88 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %89 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub i64 %92, %93
  %95 = call i32 @vfs_fallocate(%struct.file* %87, i32 %90, i32 %91, i64 %94)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.file*, %struct.file** %12, align 8
  %97 = call i32 @fput(%struct.file* %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = call i32 @down_read(i32* %101)
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %86, %56, %41, %20
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i64 @userfaultfd_remove(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @vfs_fallocate(%struct.file*, i32, i32, i64) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
