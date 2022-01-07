; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.page = type { i64 }

@EIO = common dso_local global i32 0, align 4
@OCFS2_LOCK_NONBLOCK = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ocfs2_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* @ocfs2_readpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_readpages(%struct.file* %0, %struct.address_space* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %21)
  store %struct.ocfs2_inode_info* %22, %struct.ocfs2_inode_info** %13, align 8
  %23 = load %struct.inode*, %struct.inode** %12, align 8
  %24 = load i32, i32* @OCFS2_LOCK_NONBLOCK, align 4
  %25 = call i32 @ocfs2_inode_lock_full(%struct.inode* %23, i32* null, i32 0, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %74

30:                                               ; preds = %4
  %31 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %32 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %31, i32 0, i32 1
  %33 = call i64 @down_read_trylock(i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = call i32 @ocfs2_inode_unlock(%struct.inode* %36, i32 0)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %74

39:                                               ; preds = %30
  %40 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %41 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %67

47:                                               ; preds = %39
  %48 = load %struct.list_head*, %struct.list_head** %8, align 8
  %49 = call %struct.page* @lru_to_page(%struct.list_head* %48)
  store %struct.page* %49, %struct.page** %15, align 8
  %50 = load %struct.page*, %struct.page** %15, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.inode*, %struct.inode** %12, align 8
  %58 = call i32 @i_size_read(%struct.inode* %57)
  %59 = icmp sge i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %67

61:                                               ; preds = %47
  %62 = load %struct.address_space*, %struct.address_space** %7, align 8
  %63 = load %struct.list_head*, %struct.list_head** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ocfs2_get_block, align 4
  %66 = call i32 @mpage_readpages(%struct.address_space* %62, %struct.list_head* %63, i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %61, %60, %46
  %68 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %69 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %68, i32 0, i32 1
  %70 = call i32 @up_read(i32* %69)
  %71 = load %struct.inode*, %struct.inode** %12, align 8
  %72 = call i32 @ocfs2_inode_unlock(%struct.inode* %71, i32 0)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %67, %35, %28
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_full(%struct.inode*, i32*, i32, i32) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local %struct.page* @lru_to_page(%struct.list_head*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @mpage_readpages(%struct.address_space*, %struct.list_head*, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
