; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c___ocfs2_flush_truncate_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c___ocfs2_flush_truncate_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_journal*, %struct.buffer_head*, %struct.inode* }
%struct.ocfs2_journal = type { i32 }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { i32 }
%struct.TYPE_4__ = type { i64 }

@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not get bitmap inode!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_truncate_log*, align 8
  %11 = alloca %struct.ocfs2_journal*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 2
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 0
  %20 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %19, align 8
  store %struct.ocfs2_journal* %20, %struct.ocfs2_journal** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @inode_trylock(%struct.inode* %21)
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %9, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %29 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %35 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %36, %struct.ocfs2_truncate_log** %10, align 8
  %37 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %10, align 8
  %38 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @trace_ocfs2_flush_truncate_log(i64 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %110

50:                                               ; preds = %1
  %51 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %11, align 8
  %52 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @jbd2_journal_lock_updates(i32 %53)
  %55 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %11, align 8
  %56 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @jbd2_journal_flush(i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %11, align 8
  %60 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @jbd2_journal_unlock_updates(i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %110

68:                                               ; preds = %50
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %70 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %71 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %72 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %69, i32 %70, i32 %71)
  store %struct.inode* %72, %struct.inode** %6, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = icmp ne %struct.inode* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @ML_ERROR, align 4
  %79 = call i32 @mlog(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %110

80:                                               ; preds = %68
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = call i32 @inode_lock(%struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @ocfs2_inode_lock(%struct.inode* %83, %struct.buffer_head** %8, i32 1)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %105

90:                                               ; preds = %80
  %91 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %94 = call i32 @ocfs2_replay_truncate_records(%struct.ocfs2_super* %91, %struct.inode* %92, %struct.buffer_head* %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = call i32 @ocfs2_inode_unlock(%struct.inode* %103, i32 1)
  br label %105

105:                                              ; preds = %100, %87
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = call i32 @inode_unlock(%struct.inode* %106)
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = call i32 @iput(%struct.inode* %108)
  br label %110

110:                                              ; preds = %105, %75, %65, %49
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inode_trylock(%struct.inode*) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_flush_truncate_log(i64, i32) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32) #1

declare dso_local i32 @jbd2_journal_flush(i32) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_replay_truncate_records(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
