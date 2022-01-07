; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_2__*, %struct.page* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i64, i32 }
%struct.inode = type { i64 }

@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @fuse_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 1
  %8 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %8, %struct.page** %4, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @file_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @file_update_time(i32 %19)
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @lock_page(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @unlock_page(%struct.page* %31)
  %33 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @fuse_wait_on_page_writeback(%struct.inode* %35, i32 %38)
  %40 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @file_update_time(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @fuse_wait_on_page_writeback(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
