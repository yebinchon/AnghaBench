; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_pageuptodate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_write_pageuptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_inode = type { i32, i32 }

@NFS_INO_REVAL_PAGECACHE = common dso_local global i32 0, align 4
@NFS_INO_INVALIDATING = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.inode*)* @nfs_write_pageuptodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_write_pageuptodate(%struct.page* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %5, align 8
  %8 = call %struct.nfs_inode* @NFS_I(%struct.inode* %7)
  store %struct.nfs_inode* %8, %struct.nfs_inode** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call i64 @nfs_have_delegated_attributes(%struct.inode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %15 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %43

21:                                               ; preds = %13
  %22 = call i32 (...) @smp_rmb()
  %23 = load i32, i32* @NFS_INO_INVALIDATING, align 4
  %24 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %43

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %12
  %31 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %32 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i64 @PageUptodate(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %37, %28, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs_have_delegated_attributes(%struct.inode*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
