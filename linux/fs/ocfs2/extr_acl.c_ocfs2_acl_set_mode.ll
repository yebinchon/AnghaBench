; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_acl_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_acl.c_ocfs2_acl_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, i32 }

@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32*, i32)* @ocfs2_acl_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_acl_set_mode(%struct.inode* %0, %struct.buffer_head* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.TYPE_2__, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %14 = icmp eq %struct.buffer_head* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i32 @ocfs2_read_inode_block(%struct.inode* %16, %struct.buffer_head** %6)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  br label %113

23:                                               ; preds = %15
  br label %27

24:                                               ; preds = %4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = call i32 @get_bh(%struct.buffer_head* %25)
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i32*, i32** %7, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @OCFS2_SB(i32 %33)
  %35 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %36 = call i32* @ocfs2_start_trans(i32 %34, i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @IS_ERR(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %110

45:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %50, %struct.ocfs2_dinode** %11, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i32 @INODE_CACHE(%struct.inode* %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %55 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %56 = call i32 @ocfs2_journal_access_di(i32* %51, i32 %53, %struct.buffer_head* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %99

62:                                               ; preds = %46
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call i64 @current_time(%struct.inode* %68)
  %70 = bitcast %struct.TYPE_2__* %12 to i64*
  store i64 %69, i64* %70, align 4
  %71 = bitcast %struct.TYPE_2__* %67 to i8*
  %72 = bitcast %struct.TYPE_2__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 8, i1 false)
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %78 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cpu_to_le64(i32 %82)
  %84 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %85 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %92 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = call i32 @ocfs2_update_inode_fsync_trans(i32* %93, %struct.inode* %94, i32 0)
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %98 = call i32 @ocfs2_journal_dirty(i32* %96, %struct.buffer_head* %97)
  br label %99

99:                                               ; preds = %62, %59
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @OCFS2_SB(i32 %105)
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @ocfs2_commit_trans(i32 %106, i32* %107)
  br label %109

109:                                              ; preds = %102, %99
  br label %110

110:                                              ; preds = %109, %40
  %111 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %112 = call i32 @brelse(%struct.buffer_head* %111)
  br label %113

113:                                              ; preds = %110, %20
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32* @ocfs2_start_trans(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(i32, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
