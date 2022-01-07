; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_delete_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"getting nfs sync lock(PR) failed %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@OCFS2_DIO_ORPHANED_FL = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ocfs2_delete_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call i64 @is_bad_inode(%struct.inode* %15)
  %17 = call i32 @trace_ocfs2_delete_inode(i32 %10, i64 %14, i64 %16)
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call i64 @is_bad_inode(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %1
  br label %139

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = call i32 @ocfs2_inode_is_valid_to_delete(%struct.inode* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %33, i32 0)
  br label %139

35:                                               ; preds = %28
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = call i32 @dquot_initialize(%struct.inode* %36)
  %38 = call i32 @ocfs2_block_signals(i32* %5)
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @OCFS2_SB(i32 %41)
  %43 = call i32 @ocfs2_nfs_sync_lock(i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load i32, i32* @ML_ERROR, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @mlog(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  %51 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %50, i32 0)
  br label %137

52:                                               ; preds = %35
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = call i32 @ocfs2_inode_lock(%struct.inode* %53, %struct.buffer_head** %6, i32 1)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.inode*, %struct.inode** %2, align 8
  %67 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %66, i32 0)
  br label %131

68:                                               ; preds = %52
  %69 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %72, %struct.ocfs2_dinode** %7, align 8
  %73 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %7, align 8
  %74 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @OCFS2_DIO_ORPHANED_FL, align 4
  %77 = call i32 @cpu_to_le32(i32 %76)
  %78 = and i32 %75, %77
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  %82 = load %struct.inode*, %struct.inode** %2, align 8
  %83 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %82, i32 0)
  br label %126

84:                                               ; preds = %68
  %85 = load %struct.inode*, %struct.inode** %2, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %87 = call i32 @ocfs2_query_inode_wipe(%struct.inode* %85, %struct.buffer_head* %86, i32* %3)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90, %84
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.inode*, %struct.inode** %2, align 8
  %101 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %100, i32 1)
  br label %126

102:                                              ; preds = %90
  %103 = load %struct.inode*, %struct.inode** %2, align 8
  %104 = call i32 @ocfs2_cleanup_delete_inode(%struct.inode* %103, i32 0)
  %105 = load %struct.inode*, %struct.inode** %2, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %107 = call i32 @ocfs2_wipe_inode(%struct.inode* %105, %struct.buffer_head* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @EDEADLK, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @mlog_errno(i32 %116)
  br label %118

118:                                              ; preds = %115, %110
  br label %126

119:                                              ; preds = %102
  %120 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %121 = load %struct.inode*, %struct.inode** %2, align 8
  %122 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %120
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %119, %118, %99, %81
  %127 = load %struct.inode*, %struct.inode** %2, align 8
  %128 = call i32 @ocfs2_inode_unlock(%struct.inode* %127, i32 1)
  %129 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %130 = call i32 @brelse(%struct.buffer_head* %129)
  br label %131

131:                                              ; preds = %126, %65
  %132 = load %struct.inode*, %struct.inode** %2, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @OCFS2_SB(i32 %134)
  %136 = call i32 @ocfs2_nfs_sync_unlock(i32 %135, i32 0)
  br label %137

137:                                              ; preds = %131, %46
  %138 = call i32 @ocfs2_unblock_signals(i32* %5)
  br label %139

139:                                              ; preds = %137, %32, %27
  ret void
}

declare dso_local i32 @trace_ocfs2_delete_inode(i32, i64, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_is_valid_to_delete(%struct.inode*) #1

declare dso_local i32 @ocfs2_cleanup_delete_inode(%struct.inode*, i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @ocfs2_block_signals(i32*) #1

declare dso_local i32 @ocfs2_nfs_sync_lock(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_query_inode_wipe(%struct.inode*, %struct.buffer_head*, i32*) #1

declare dso_local i32 @ocfs2_wipe_inode(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_nfs_sync_unlock(i32, i32) #1

declare dso_local i32 @ocfs2_unblock_signals(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
