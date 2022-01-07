; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_check_dirty_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_check_dirty_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.nfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.address_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32*, i32*)* @nfs_check_dirty_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_check_dirty_writeback(%struct.page* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_inode*, align 8
  %8 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.address_space* @page_file_mapping(%struct.page* %9)
  store %struct.address_space* %10, %struct.address_space** %8, align 8
  %11 = load %struct.address_space*, %struct.address_space** %8, align 8
  %12 = icmp ne %struct.address_space* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i64 @PageSwapCache(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  br label %36

18:                                               ; preds = %13
  %19 = load %struct.address_space*, %struct.address_space** %8, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nfs_inode* @NFS_I(i32 %21)
  store %struct.nfs_inode* %22, %struct.nfs_inode** %7, align 8
  %23 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %24 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  store i32 1, i32* %29, align 4
  br label %36

30:                                               ; preds = %18
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i64 @PagePrivate(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %17, %28, %34, %30
  ret void
}

declare dso_local %struct.address_space* @page_file_mapping(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local %struct.nfs_inode* @NFS_I(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
