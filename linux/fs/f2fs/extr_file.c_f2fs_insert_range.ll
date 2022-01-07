; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_insert_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_insert_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @f2fs_insert_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_insert_range(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %16)
  store %struct.f2fs_sb_info* %17, %struct.f2fs_sb_info** %8, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i32 @i_size_read(%struct.inode* %18)
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @inode_newsize_ok(%struct.inode* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %4, align 4
  br label %192

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @i_size_read(%struct.inode* %31)
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %192

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @F2FS_BLKSIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @F2FS_BLKSIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %192

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @f2fs_convert_inline_inode(%struct.inode* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %4, align 4
  br label %192

59:                                               ; preds = %52
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %61 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %60, i32 1)
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @down_write(i32* %64)
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call i32 @i_size_read(%struct.inode* %67)
  %69 = call i32 @f2fs_truncate_blocks(%struct.inode* %66, i32 %68, i32 1)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @up_write(i32* %72)
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %59
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %4, align 4
  br label %192

78:                                               ; preds = %59
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @LLONG_MAX, align 4
  %84 = call i32 @filemap_write_and_wait_range(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %4, align 4
  br label %192

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @PAGE_SHIFT, align 4
  %92 = ashr i32 %90, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = ashr i32 %95, %96
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %12, align 4
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = call i32 @i_size_read(%struct.inode* %101)
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = call i32 @DIV_ROUND_UP(i32 %102, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @WRITE, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i32 @down_write(i32* %110)
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = call i32 @down_write(i32* %114)
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @truncate_pagecache(%struct.inode* %116, i32 %117)
  br label %119

119:                                              ; preds = %137, %89
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp sgt i32 %123, %124
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i1 [ false, %119 ], [ %125, %122 ]
  br i1 %127, label %128, label %155

128:                                              ; preds = %126
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %135, %128
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %13, align 4
  %141 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %142 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %141)
  %143 = load %struct.inode*, %struct.inode** %5, align 8
  %144 = call i32 @f2fs_drop_extent_tree(%struct.inode* %143)
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = load %struct.inode*, %struct.inode** %5, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @__exchange_data_block(%struct.inode* %145, %struct.inode* %146, i32 %147, i32 %150, i32 %151, i32 0)
  store i32 %152, i32* %15, align 4
  %153 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %154 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %153)
  br label %119

155:                                              ; preds = %126
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = call i32 @up_write(i32* %158)
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %160)
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @WRITE, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = call i32 @up_write(i32* %165)
  %167 = load %struct.inode*, %struct.inode** %5, align 8
  %168 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %167)
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = call i32 @down_write(i32* %169)
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @LLONG_MAX, align 4
  %176 = call i32 @filemap_write_and_wait_range(i32 %173, i32 %174, i32 %175)
  %177 = load %struct.inode*, %struct.inode** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @truncate_pagecache(%struct.inode* %177, i32 %178)
  %180 = load %struct.inode*, %struct.inode** %5, align 8
  %181 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %180)
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = call i32 @up_write(i32* %182)
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %155
  %187 = load %struct.inode*, %struct.inode** %5, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @f2fs_i_size_write(%struct.inode* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %155
  %191 = load i32, i32* %15, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %190, %87, %76, %57, %49, %34, %27
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_truncate_blocks(%struct.inode*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_drop_extent_tree(%struct.inode*) #1

declare dso_local i32 @__exchange_data_block(%struct.inode*, %struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
