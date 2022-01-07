; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_filler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.page*)* @nfs_readdir_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_filler(i8* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @file_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call i32 @nfs_readdir_xdr_to_array(%struct.TYPE_3__* %15, %struct.page* %16, %struct.inode* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i32 @SetPageUptodate(%struct.page* %23)
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i64 @invalidate_inode_pages2_range(i32 %27, i64 %31, i32 -1)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nfs_zap_mapping(%struct.inode* %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %22
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = call i32 @unlock_page(%struct.page* %41)
  store i32 0, i32* %3, align 4
  br label %47

43:                                               ; preds = %21
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = call i32 @unlock_page(%struct.page* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @nfs_readdir_xdr_to_array(%struct.TYPE_3__*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i64 @invalidate_inode_pages2_range(i32, i64, i32) #1

declare dso_local i32 @nfs_zap_mapping(%struct.inode*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
