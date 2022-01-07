; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_symlink.c_nfs_symlink_filler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_symlink.c_nfs_symlink_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.page*, i32, i32)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.page*)* @nfs_symlink_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_symlink_filler(i8* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.inode*
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.inode*, %struct.page*, i32, i32)*, i32 (%struct.inode*, %struct.page*, i32, i32)** %12, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i32 %13(%struct.inode* %14, %struct.page* %15, i32 0, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32 @SetPageUptodate(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i32 @unlock_page(%struct.page* %24)
  store i32 0, i32* %3, align 4
  br label %33

26:                                               ; preds = %20
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i32 @SetPageError(%struct.page* %27)
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = call i32 @unlock_page(%struct.page* %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
