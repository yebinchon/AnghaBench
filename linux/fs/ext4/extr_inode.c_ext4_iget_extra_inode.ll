; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_iget_extra_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_iget_extra_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.ext4_inode_info = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_inode*, %struct.ext4_inode_info*)* @ext4_iget_extra_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_iget_extra_inode(%struct.inode* %0, %struct.ext4_inode* %1, %struct.ext4_inode_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_inode*, align 8
  %7 = alloca %struct.ext4_inode_info*, align 8
  %8 = alloca i64*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_inode* %1, %struct.ext4_inode** %6, align 8
  store %struct.ext4_inode_info* %2, %struct.ext4_inode_info** %7, align 8
  %9 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %10 = bitcast %struct.ext4_inode* %9 to i8*
  %11 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr i8, i8* %10, i64 %12
  %14 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %15 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %13, i64 %17
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %8, align 8
  %20 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %21 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %22 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @EXT4_INODE_SIZE(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = icmp ule i64 %26, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %3
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %37 = call i64 @cpu_to_le32(i32 %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %42 = call i32 @ext4_set_inode_state(%struct.inode* %40, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @ext4_find_inline_data_nolock(%struct.inode* %43)
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %33, %3
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @EXT4_INODE_SIZE(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_find_inline_data_nolock(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
