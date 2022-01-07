; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_remove_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_remove_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_dx_root_block = type { i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_DX_ROOT_REMOVE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_INDEXED_DIR_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.buffer_head*)* @ocfs2_dx_dir_remove_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_remove_index(%struct.inode* %0, %struct.buffer_head* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_dx_root_block*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %8, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %9, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %28, %struct.ocfs2_dx_root_block** %10, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %30 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %31 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %29, i32 %30, i32 %34)
  store %struct.inode* %35, %struct.inode** %11, align 8
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = icmp ne %struct.inode* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %155

43:                                               ; preds = %3
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = call i32 @inode_lock(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = call i32 @ocfs2_inode_lock(%struct.inode* %46, %struct.buffer_head** %12, i32 1)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %150

53:                                               ; preds = %43
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %55 = load i32, i32* @OCFS2_DX_ROOT_REMOVE_CREDITS, align 4
  %56 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %54, i32 %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i64 @IS_ERR(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @PTR_ERR(i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %147

65:                                               ; preds = %53
  %66 = load i32*, i32** %13, align 8
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @INODE_CACHE(%struct.inode* %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %70 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %71 = call i32 @ocfs2_journal_access_di(i32* %66, i32 %68, %struct.buffer_head* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %143

77:                                               ; preds = %65
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load i32, i32* @OCFS2_INDEXED_DIR_FL, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @cpu_to_le16(i32 %92)
  %94 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = call i32 @cpu_to_le64(i64 0)
  %101 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %102 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = call i32 @ocfs2_update_inode_fsync_trans(i32* %103, %struct.inode* %104, i32 1)
  %106 = load i32*, i32** %13, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %108 = call i32 @ocfs2_journal_dirty(i32* %106, %struct.buffer_head* %107)
  %109 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %110 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @le64_to_cpu(i64 %111)
  store i32 %112, i32* %14, align 4
  %113 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %114 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @le16_to_cpu(i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %118 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %77
  %122 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %10, align 8
  %123 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @le64_to_cpu(i64 %124)
  store i32 %125, i32* %16, align 4
  br label %130

126:                                              ; preds = %77
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @ocfs2_which_suballoc_group(i32 %127, i32 %128)
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %126, %121
  %131 = load i32*, i32** %13, align 8
  %132 = load %struct.inode*, %struct.inode** %11, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @ocfs2_free_suballoc_bits(i32* %131, %struct.inode* %132, %struct.buffer_head* %133, i32 %134, i32 %135, i32 1)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %142

142:                                              ; preds = %139, %130
  br label %143

143:                                              ; preds = %142, %74
  %144 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %144, i32* %145)
  br label %147

147:                                              ; preds = %143, %60
  %148 = load %struct.inode*, %struct.inode** %11, align 8
  %149 = call i32 @ocfs2_inode_unlock(%struct.inode* %148, i32 1)
  br label %150

150:                                              ; preds = %147, %50
  %151 = load %struct.inode*, %struct.inode** %11, align 8
  %152 = call i32 @inode_unlock(%struct.inode* %151)
  %153 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %154 = call i32 @brelse(%struct.buffer_head* %153)
  br label %155

155:                                              ; preds = %150, %38
  %156 = load %struct.inode*, %struct.inode** %11, align 8
  %157 = call i32 @iput(%struct.inode* %156)
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @ocfs2_which_suballoc_group(i32, i32) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
