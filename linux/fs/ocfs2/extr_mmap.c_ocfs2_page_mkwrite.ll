; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_mmap.c_ocfs2_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_mmap.c_ocfs2_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_3__*, %struct.page* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @ocfs2_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 1
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %3, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @file_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sb_start_pagefault(i32 %20)
  %22 = call i32 @ocfs2_block_signals(i32* %6)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @ocfs2_inode_lock(%struct.inode* %23, %struct.buffer_head** %5, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @vmf_error(i32 %30)
  store i32 %31, i32* %8, align 4
  br label %53

32:                                               ; preds = %1
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @down_write(i32* %35)
  %37 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %38 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = call i32 @__ocfs2_page_mkwrite(i32 %41, %struct.buffer_head* %42, %struct.page* %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @up_write(i32* %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %50 = call i32 @brelse(%struct.buffer_head* %49)
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call i32 @ocfs2_inode_unlock(%struct.inode* %51, i32 1)
  br label %53

53:                                               ; preds = %32, %27
  %54 = call i32 @ocfs2_unblock_signals(i32* %6)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sb_end_pagefault(i32 %57)
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @ocfs2_block_signals(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @vmf_error(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @__ocfs2_page_mkwrite(i32, %struct.buffer_head*, %struct.page*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_unblock_signals(i32*) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
