; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_filemap_fault.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_filemap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_fault*)* @f2fs_filemap_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @f2fs_filemap_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %5 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %6 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.inode* @file_inode(i32 %9)
  store %struct.inode* %10, %struct.inode** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %16 = call i64 @filemap_fault(%struct.vm_fault* %15)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @up_read(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @trace_f2fs_filemap_fault(%struct.inode* %21, i32 %24, i64 %25)
  %27 = load i64, i64* %4, align 8
  ret i64 %27
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @filemap_fault(%struct.vm_fault*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @trace_f2fs_filemap_fault(%struct.inode*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
