; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_vm_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_vm_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_6__*, %struct.page* }
%struct.TYPE_6__ = type { %struct.file* }
%struct.file = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.TYPE_9__ = type { i32 }

@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"NFS: vm_page_mkwrite(%pD2(%lu), offset %lld)\0A\00", align 1
@NFS_INO_INVALIDATING = common dso_local global i32 0, align 4
@nfs_wait_bit_killable = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @nfs_vm_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_vm_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 1
  %11 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %11, %struct.page** %3, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %4, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call %struct.inode* @file_inode(%struct.file* %17)
  store %struct.inode* %18, %struct.inode** %5, align 8
  %19 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @PAGECACHE, align 4
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i64 @page_offset(%struct.page* %29)
  %31 = call i32 @dfprintk(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.file* %21, i32 %28, i64 %30)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sb_start_pagefault(i32 %34)
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call %struct.TYPE_9__* @NFS_I(%struct.inode* %36)
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = call i32 @nfs_fscache_wait_on_page_write(%struct.TYPE_9__* %37, %struct.page* %38)
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call %struct.TYPE_9__* @NFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* @NFS_INO_INVALIDATING, align 4
  %44 = load i32, i32* @nfs_wait_bit_killable, align 4
  %45 = load i32, i32* @TASK_KILLABLE, align 4
  %46 = call i32 @wait_on_bit_action(i32* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call i32 @lock_page(%struct.page* %47)
  %49 = load %struct.page*, %struct.page** %3, align 8
  %50 = call %struct.address_space* @page_file_mapping(%struct.page* %49)
  store %struct.address_space* %50, %struct.address_space** %8, align 8
  %51 = load %struct.address_space*, %struct.address_space** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load %struct.address_space*, %struct.address_space** %53, align 8
  %55 = icmp ne %struct.address_space* %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %1
  br label %80

57:                                               ; preds = %1
  %58 = load %struct.page*, %struct.page** %3, align 8
  %59 = call i32 @wait_on_page_writeback(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %3, align 8
  %61 = call i32 @nfs_page_length(%struct.page* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %80

65:                                               ; preds = %57
  %66 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %66, i32* %7, align 4
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = load %struct.page*, %struct.page** %3, align 8
  %69 = call i64 @nfs_flush_incompatible(%struct.file* %67, %struct.page* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.file*, %struct.file** %4, align 8
  %73 = load %struct.page*, %struct.page** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @nfs_updatepage(%struct.file* %72, %struct.page* %73, i32 0, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %83

78:                                               ; preds = %71, %65
  %79 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %64, %56
  %81 = load %struct.page*, %struct.page** %3, align 8
  %82 = call i32 @unlock_page(%struct.page* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sb_end_pagefault(i32 %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*, i32, i64) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @nfs_fscache_wait_on_page_write(%struct.TYPE_9__*, %struct.page*) #1

declare dso_local %struct.TYPE_9__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @wait_on_bit_action(i32*, i32, i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.address_space* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i64 @nfs_flush_incompatible(%struct.file*, %struct.page*) #1

declare dso_local i64 @nfs_updatepage(%struct.file*, %struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
