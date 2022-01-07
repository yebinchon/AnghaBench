; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_enable_inode_chksum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inode.c_f2fs_enable_inode_chksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.f2fs_inode }

@F2FS_EXTRA_ATTR = common dso_local global i32 0, align 4
@i_inode_checksum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.page*)* @f2fs_enable_inode_chksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_enable_inode_chksum(%struct.f2fs_sb_info* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.f2fs_inode*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %7 = load %struct.page*, %struct.page** %5, align 8
  %8 = call %struct.TYPE_2__* @F2FS_NODE(%struct.page* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.f2fs_inode* %9, %struct.f2fs_inode** %6, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = call i32 @f2fs_sb_has_inode_chksum(%struct.f2fs_sb_info* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i32 @IS_INODE(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %20 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @F2FS_EXTRA_ATTR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %14
  store i32 0, i32* %3, align 4
  br label %37

26:                                               ; preds = %18
  %27 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %28 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %29 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load i32, i32* @i_inode_checksum, align 4
  %33 = call i32 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %27, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %25, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_2__* @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @f2fs_sb_has_inode_chksum(%struct.f2fs_sb_info*) #1

declare dso_local i32 @IS_INODE(%struct.page*) #1

declare dso_local i32 @F2FS_FITS_IN_INODE(%struct.f2fs_inode*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
