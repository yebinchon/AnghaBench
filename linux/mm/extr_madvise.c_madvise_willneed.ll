; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_willneed.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_willneed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.file* }
%struct.file = type { i32 }

@EBADF = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@POSIX_FADV_WILLNEED = common dso_local global i32 0, align 4
@swapin_walk_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64)* @madvise_willneed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_willneed(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 3
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %10, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %15, %struct.vm_area_struct** %16, align 8
  %17 = load %struct.file*, %struct.file** %10, align 8
  %18 = icmp ne %struct.file* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* @EBADF, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.file*, %struct.file** %10, align 8
  %24 = call i32 @file_inode(%struct.file* %23)
  %25 = call i64 @IS_DAX(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %64

28:                                               ; preds = %22
  %29 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %29, align 8
  %30 = load %struct.file*, %struct.file** %10, align 8
  %31 = call i32 @get_file(%struct.file* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @up_read(i32* %35)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  %42 = trunc i64 %41 to i32
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @PAGE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = add nsw i32 %42, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.file*, %struct.file** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %52, %53
  %55 = load i32, i32* @POSIX_FADV_WILLNEED, align 4
  %56 = call i32 @vfs_fadvise(%struct.file* %50, i32 %51, i64 %54, i32 %55)
  %57 = load %struct.file*, %struct.file** %10, align 8
  %58 = call i32 @fput(%struct.file* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @down_read(i32* %62)
  store i64 0, i64* %5, align 8
  br label %64

64:                                               ; preds = %28, %27, %19
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i64 @IS_DAX(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @vfs_fadvise(%struct.file*, i32, i64, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
