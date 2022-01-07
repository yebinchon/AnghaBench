; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_2__*, %struct.page* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i64 }
%struct.inode = type { i64, i32 }
%struct.orangefs_inode_s = type { i64 }
%struct.orangefs_write_range = type { i32, i32, i8*, i8* }

@TASK_KILLABLE = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.orangefs_inode_s*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.orangefs_write_range*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 1
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %3, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @file_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %4, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.orangefs_inode_s* @ORANGEFS_I(%struct.inode* %18)
  store %struct.orangefs_inode_s* %19, %struct.orangefs_inode_s** %5, align 8
  %20 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %21 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %20, i32 0, i32 0
  store i64* %21, i64** %6, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sb_start_pagefault(i32 %24)
  %26 = load i64*, i64** %6, align 8
  %27 = load i32, i32* @TASK_KILLABLE, align 4
  %28 = call i64 @wait_on_bit(i64* %26, i32 1, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @VM_FAULT_RETRY, align 4
  store i32 %31, i32* %7, align 4
  br label %147

32:                                               ; preds = %1
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @lock_page(%struct.page* %33)
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = call i64 @PageDirty(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i64 @PagePrivate(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = call i64 @orangefs_launder_page(%struct.page* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @VM_FAULT_LOCKED, align 4
  %48 = load i32, i32* @VM_FAULT_RETRY, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  br label %147

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %38, %32
  %52 = load %struct.page*, %struct.page** %3, align 8
  %53 = call i64 @PagePrivate(%struct.page* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %51
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = call i64 @page_private(%struct.page* %56)
  %58 = inttoptr i64 %57 to %struct.orangefs_write_range*
  store %struct.orangefs_write_range* %58, %struct.orangefs_write_range** %8, align 8
  %59 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %60 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (...) @current_fsuid()
  %63 = call i64 @uid_eq(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %55
  %66 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %67 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (...) @current_fsgid()
  %70 = call i64 @gid_eq(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.page*, %struct.page** %3, align 8
  %74 = call i8* @page_offset(%struct.page* %73)
  %75 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %76 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @PAGE_SIZE, align 8
  %78 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %79 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %121

80:                                               ; preds = %65, %55
  %81 = load %struct.page*, %struct.page** %3, align 8
  %82 = call i64 @orangefs_launder_page(%struct.page* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @VM_FAULT_LOCKED, align 4
  %86 = load i32, i32* @VM_FAULT_RETRY, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %7, align 4
  br label %147

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %51
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.orangefs_write_range* @kmalloc(i32 24, i32 %91)
  store %struct.orangefs_write_range* %92, %struct.orangefs_write_range** %8, align 8
  %93 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %94 = icmp ne %struct.orangefs_write_range* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @VM_FAULT_LOCKED, align 4
  %97 = load i32, i32* @VM_FAULT_RETRY, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %7, align 4
  br label %147

99:                                               ; preds = %90
  %100 = load %struct.page*, %struct.page** %3, align 8
  %101 = call i8* @page_offset(%struct.page* %100)
  %102 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %103 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @PAGE_SIZE, align 8
  %105 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %106 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = call i32 (...) @current_fsuid()
  %108 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %109 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = call i32 (...) @current_fsgid()
  %111 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %112 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.page*, %struct.page** %3, align 8
  %114 = call i32 @SetPagePrivate(%struct.page* %113)
  %115 = load %struct.page*, %struct.page** %3, align 8
  %116 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %8, align 8
  %117 = ptrtoint %struct.orangefs_write_range* %116 to i64
  %118 = call i32 @set_page_private(%struct.page* %115, i64 %117)
  %119 = load %struct.page*, %struct.page** %3, align 8
  %120 = call i32 @get_page(%struct.page* %119)
  br label %121

121:                                              ; preds = %99, %72
  %122 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %123 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @file_update_time(i32 %126)
  %128 = load %struct.page*, %struct.page** %3, align 8
  %129 = getelementptr inbounds %struct.page, %struct.page* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %121
  %136 = load %struct.page*, %struct.page** %3, align 8
  %137 = call i32 @unlock_page(%struct.page* %136)
  %138 = load i32, i32* @VM_FAULT_LOCKED, align 4
  %139 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %7, align 4
  br label %147

141:                                              ; preds = %121
  %142 = load %struct.page*, %struct.page** %3, align 8
  %143 = call i32 @set_page_dirty(%struct.page* %142)
  %144 = load %struct.page*, %struct.page** %3, align 8
  %145 = call i32 @wait_for_stable_page(%struct.page* %144)
  %146 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %141, %135, %95, %84, %46, %30
  %148 = load %struct.inode*, %struct.inode** %4, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @sb_end_pagefault(i32 %150)
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local %struct.orangefs_inode_s* @ORANGEFS_I(%struct.inode*) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i64 @wait_on_bit(i64*, i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i64 @orangefs_launder_page(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i8* @page_offset(%struct.page*) #1

declare dso_local %struct.orangefs_write_range* @kmalloc(i32, i32) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @file_update_time(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
