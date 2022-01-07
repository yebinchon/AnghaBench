; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_grow_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_grow_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@NFS_INO_INVALID_SIZE = common dso_local global i32 0, align 4
@NFSIOS_EXTENDWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @nfs_grow_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_grow_file(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call %struct.TYPE_3__* @page_file_mapping(%struct.page* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i32 @i_size_read(%struct.inode* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @page_index(%struct.page* %27)
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %57

32:                                               ; preds = %26, %3
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @page_file_offset(%struct.page* %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %35, %36
  %38 = add i32 %34, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %57

43:                                               ; preds = %32
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @i_size_write(%struct.inode* %44, i32 %45)
  %47 = load i32, i32* @NFS_INO_INVALID_SIZE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = load i32, i32* @NFSIOS_EXTENDWRITE, align 4
  %56 = call i32 @nfs_inc_stats(%struct.inode* %54, i32 %55)
  br label %57

57:                                               ; preds = %43, %42, %31
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  ret void
}

declare dso_local %struct.TYPE_3__* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @page_file_offset(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
