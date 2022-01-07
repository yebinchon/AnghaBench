; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_alloc_lastblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_ufs_alloc_lastblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space*, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, i64, %struct.buffer_head* }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UFS_IND_FRAGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ufs_alloc_lastblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_alloc_lastblock(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.ufs_sb_private_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %7, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %23, align 8
  store %struct.ufs_sb_private_info* %24, %struct.ufs_sb_private_info** %8, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %27 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %32 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %157

38:                                               ; preds = %2
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %11, align 4
  %41 = load %struct.address_space*, %struct.address_space** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %43, %46
  %48 = ashr i32 %42, %47
  %49 = call %struct.page* @ufs_get_locked_page(%struct.address_space* %41, i32 %48)
  store %struct.page* %49, %struct.page** %12, align 8
  %50 = load %struct.page*, %struct.page** %12, align 8
  %51 = call i64 @IS_ERR(%struct.page* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %157

56:                                               ; preds = %38
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %57, %64
  store i32 %65, i32* %10, align 4
  %66 = load %struct.page*, %struct.page** %12, align 8
  %67 = call %struct.buffer_head* @page_buffers(%struct.page* %66)
  store %struct.buffer_head* %67, %struct.buffer_head** %13, align 8
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %76, %56
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 2
  %75 = load %struct.buffer_head*, %struct.buffer_head** %74, align 8
  store %struct.buffer_head* %75, %struct.buffer_head** %13, align 8
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %68

79:                                               ; preds = %68
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %83 = call i32 @ufs_getfrag_block(%struct.inode* %80, i32 %81, %struct.buffer_head* %82, i32 1)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %154

88:                                               ; preds = %79
  %89 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %90 = call i64 @buffer_new(%struct.buffer_head* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %94 = call i32 @clear_buffer_new(%struct.buffer_head* %93)
  %95 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %96 = call i32 @clean_bdev_bh_alias(%struct.buffer_head* %95)
  %97 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %98 = call i32 @set_buffer_uptodate(%struct.buffer_head* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %100 = call i32 @mark_buffer_dirty(%struct.buffer_head* %99)
  %101 = load %struct.page*, %struct.page** %12, align 8
  %102 = call i32 @set_page_dirty(%struct.page* %101)
  br label %103

103:                                              ; preds = %92, %88
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @UFS_IND_FRAGMENT, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %153

107:                                              ; preds = %103
  %108 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %109 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @ufs_fragnum(i32 %111)
  %113 = sub nsw i32 %110, %112
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  %115 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %116 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %14, align 8
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %149, %107
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %152

123:                                              ; preds = %119
  %124 = load %struct.super_block*, %struct.super_block** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %14, align 8
  %128 = add nsw i64 %126, %127
  %129 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %124, i64 %128)
  store %struct.buffer_head* %129, %struct.buffer_head** %13, align 8
  %130 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %131 = call i32 @lock_buffer(%struct.buffer_head* %130)
  %132 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %133 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.super_block*, %struct.super_block** %6, align 8
  %136 = getelementptr inbounds %struct.super_block, %struct.super_block* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @memset(i32 %134, i32 0, i32 %137)
  %139 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %140 = call i32 @set_buffer_uptodate(%struct.buffer_head* %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %142 = call i32 @mark_buffer_dirty(%struct.buffer_head* %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %144 = call i32 @unlock_buffer(%struct.buffer_head* %143)
  %145 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %146 = call i32 @sync_dirty_buffer(%struct.buffer_head* %145)
  %147 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %148 = call i32 @brelse(%struct.buffer_head* %147)
  br label %149

149:                                              ; preds = %123
  %150 = load i32, i32* %9, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %119

152:                                              ; preds = %119
  br label %153

153:                                              ; preds = %152, %103
  br label %154

154:                                              ; preds = %153, %87
  %155 = load %struct.page*, %struct.page** %12, align 8
  %156 = call i32 @ufs_put_locked_page(%struct.page* %155)
  br label %157

157:                                              ; preds = %154, %53, %37
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local %struct.page* @ufs_get_locked_page(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @ufs_getfrag_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clean_bdev_bh_alias(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @ufs_fragnum(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ufs_put_locked_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
