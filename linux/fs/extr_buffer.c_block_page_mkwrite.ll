; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_block_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_block_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.vm_fault = type { %struct.page* }
%struct.page = type { i64, i32 }
%struct.inode = type { i64 }

@EFAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_page_mkwrite(%struct.vm_area_struct* %0, %struct.vm_fault* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vm_fault*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.vm_fault*, %struct.vm_fault** %6, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 0
  %15 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %15, %struct.page** %8, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.inode* @file_inode(i32 %18)
  store %struct.inode* %19, %struct.inode** %9, align 8
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = call i32 @lock_page(%struct.page* %20)
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = call i32 @i_size_read(%struct.inode* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = call i32 @page_offset(%struct.page* %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %3
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %79

39:                                               ; preds = %31
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @PAGE_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %10, align 8
  br label %56

54:                                               ; preds = %39
  %55 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %54, %48
  %57 = load %struct.page*, %struct.page** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @__block_write_begin(%struct.page* %57, i32 0, i64 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load %struct.page*, %struct.page** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @block_commit_write(%struct.page* %64, i32 0, i64 %65)
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %79

74:                                               ; preds = %67
  %75 = load %struct.page*, %struct.page** %8, align 8
  %76 = call i32 @set_page_dirty(%struct.page* %75)
  %77 = load %struct.page*, %struct.page** %8, align 8
  %78 = call i32 @wait_for_stable_page(%struct.page* %77)
  store i32 0, i32* %4, align 4
  br label %83

79:                                               ; preds = %73, %36
  %80 = load %struct.page*, %struct.page** %8, align 8
  %81 = call i32 @unlock_page(%struct.page* %80)
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i32, i64, i32) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
