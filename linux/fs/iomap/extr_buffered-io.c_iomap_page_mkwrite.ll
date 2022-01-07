; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_2__*, %struct.page* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i64, i32 }
%struct.iomap_ops = type { i32 }
%struct.inode = type { i64 }

@EFAULT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@IOMAP_WRITE = common dso_local global i32 0, align 4
@IOMAP_FAULT = common dso_local global i32 0, align 4
@iomap_page_mkwrite_actor = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_page_mkwrite(%struct.vm_fault* %0, %struct.iomap_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca %struct.iomap_ops*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %4, align 8
  store %struct.iomap_ops* %1, %struct.iomap_ops** %5, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 1
  %14 = load %struct.page*, %struct.page** %13, align 8
  store %struct.page* %14, %struct.page** %6, align 8
  %15 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.inode* @file_inode(i32 %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i32 @lock_page(%struct.page* %21)
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i32 @i_size_read(%struct.inode* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call i32 @page_offset(%struct.page* %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %2
  %38 = load i64, i64* @EFAULT, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %11, align 8
  br label %90

40:                                               ; preds = %32
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @PAGE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @offset_in_page(i32 %50)
  store i64 %51, i64* %8, align 8
  br label %54

52:                                               ; preds = %40
  %53 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.page*, %struct.page** %6, align 8
  %56 = call i32 @page_offset(%struct.page* %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %77, %54
  %58 = load i64, i64* %8, align 8
  %59 = icmp ugt i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* @IOMAP_WRITE, align 4
  %65 = load i32, i32* @IOMAP_FAULT, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.iomap_ops*, %struct.iomap_ops** %5, align 8
  %68 = load %struct.page*, %struct.page** %6, align 8
  %69 = load i32, i32* @iomap_page_mkwrite_actor, align 4
  %70 = call i64 @iomap_apply(%struct.inode* %61, i32 %62, i64 %63, i32 %66, %struct.iomap_ops* %67, %struct.page* %68, i32 %69)
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ule i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %90

77:                                               ; preds = %60
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %57

86:                                               ; preds = %57
  %87 = load %struct.page*, %struct.page** %6, align 8
  %88 = call i32 @wait_for_stable_page(%struct.page* %87)
  %89 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %89, i32* %3, align 4
  br label %95

90:                                               ; preds = %76, %37
  %91 = load %struct.page*, %struct.page** %6, align 8
  %92 = call i32 @unlock_page(%struct.page* %91)
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @block_page_mkwrite_return(i64 %93)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %86
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i64 @iomap_apply(%struct.inode*, i32, i64, i32, %struct.iomap_ops*, %struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @block_page_mkwrite_return(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
