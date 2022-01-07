; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_move_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_move_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_move_extents_context = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_move_extents_context*)* @ocfs2_move_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_move_extents(%struct.ocfs2_move_extents_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_move_extents_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca %struct.TYPE_3__, align 4
  store %struct.ocfs2_move_extents_context* %0, %struct.ocfs2_move_extents_context** %3, align 8
  %11 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_move_extents_context, %struct.ocfs2_move_extents_context* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ocfs2_super* @OCFS2_SB(i32 %16)
  store %struct.ocfs2_super* %17, %struct.ocfs2_super** %9, align 8
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %19 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %23 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %1
  %26 = load i32, i32* @EROFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %135

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @inode_lock(%struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i32 @ocfs2_rw_lock(%struct.inode* %31, i32 1)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %131

38:                                               ; preds = %28
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @ocfs2_inode_lock(%struct.inode* %39, %struct.buffer_head** %8, i32 1)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %128

46:                                               ; preds = %38
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @down_write(i32* %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = load %struct.ocfs2_move_extents_context*, %struct.ocfs2_move_extents_context** %3, align 8
  %53 = call i32 @__ocfs2_move_extents_range(%struct.buffer_head* %51, %struct.ocfs2_move_extents_context* %52)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @up_write(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %123

63:                                               ; preds = %46
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %65 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %66 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %64, i32 %65)
  store i32* %66, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @IS_ERR(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @PTR_ERR(i32* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  br label %123

75:                                               ; preds = %63
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = call i32 @INODE_CACHE(%struct.inode* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %80 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %81 = call i32 @ocfs2_journal_access_di(i32* %76, i32 %78, %struct.buffer_head* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %119

87:                                               ; preds = %75
  %88 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %89 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %91, %struct.ocfs2_dinode** %7, align 8
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call i64 @current_time(%struct.inode* %94)
  %96 = bitcast %struct.TYPE_3__* %10 to i64*
  store i64 %95, i64* %96, align 4
  %97 = bitcast %struct.TYPE_3__* %93 to i8*
  %98 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 8, i1 false)
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cpu_to_le64(i32 %102)
  %104 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %105 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cpu_to_le32(i32 %109)
  %111 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %112 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.inode*, %struct.inode** %6, align 8
  %115 = call i32 @ocfs2_update_inode_fsync_trans(i32* %113, %struct.inode* %114, i32 0)
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %118 = call i32 @ocfs2_journal_dirty(i32* %116, %struct.buffer_head* %117)
  br label %119

119:                                              ; preds = %87, %84
  %120 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %120, i32* %121)
  br label %123

123:                                              ; preds = %119, %70, %60
  %124 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = call i32 @ocfs2_inode_unlock(%struct.inode* %126, i32 1)
  br label %128

128:                                              ; preds = %123, %43
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = call i32 @ocfs2_rw_unlock(%struct.inode* %129, i32 1)
  br label %131

131:                                              ; preds = %128, %35
  %132 = load %struct.inode*, %struct.inode** %6, align 8
  %133 = call i32 @inode_unlock(%struct.inode* %132)
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %25
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @__ocfs2_move_extents_range(%struct.buffer_head*, %struct.ocfs2_move_extents_context*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
