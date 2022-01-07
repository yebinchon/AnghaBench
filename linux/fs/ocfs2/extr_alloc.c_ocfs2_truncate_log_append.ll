; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_append.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, %struct.buffer_head*, %struct.inode* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [61 x i8] c"Truncate record count on #%llu invalid wanted %u, actual %u\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_truncate_log*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 3
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %13, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 2
  %22 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %22, %struct.buffer_head** %14, align 8
  %23 = load %struct.inode*, %struct.inode** %13, align 8
  %24 = call i32 @inode_trylock(%struct.inode* %23)
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ocfs2_blocks_to_clusters(i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %32 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %34, %struct.ocfs2_dinode** %15, align 8
  %35 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %36 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %42 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %43, %struct.ocfs2_truncate_log** %16, align 8
  %44 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %45 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le16_to_cpu(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ocfs2_truncate_recs_per_inode(i32 %52)
  %54 = icmp ugt i32 %49, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br label %58

58:                                               ; preds = %55, %4
  %59 = phi i1 [ true, %4 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = load %struct.inode*, %struct.inode** %13, align 8
  %62 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %66 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ocfs2_truncate_recs_per_inode(i32 %67)
  %69 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %70 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @le16_to_cpu(i32 %71)
  %73 = call i32 @mlog_bug_on_msg(i32 %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %68, i8* %72)
  %74 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %75 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @le16_to_cpu(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp uge i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %58
  %83 = load i32, i32* @ENOSPC, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %175

87:                                               ; preds = %58
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.inode*, %struct.inode** %13, align 8
  %90 = call i32 @INODE_CACHE(%struct.inode* %89)
  %91 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %92 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %93 = call i32 @ocfs2_journal_access_di(i32* %88, i32 %90, %struct.buffer_head* %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %175

99:                                               ; preds = %87
  %100 = load %struct.inode*, %struct.inode** %13, align 8
  %101 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @trace_ocfs2_truncate_log_append(i64 %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @ocfs2_truncate_log_can_coalesce(%struct.ocfs2_truncate_log* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %99
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %10, align 4
  %115 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %116 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @le32_to_cpu(i8* %122)
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load %struct.inode*, %struct.inode** %13, align 8
  %127 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %132 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @le32_to_cpu(i8* %138)
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @trace_ocfs2_truncate_log_append(i64 %129, i32 %130, i32 %139, i32 %140)
  br label %157

142:                                              ; preds = %99
  %143 = load i32, i32* %11, align 4
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %146 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i8* %144, i8** %151, align 8
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  %154 = call i32 @cpu_to_le16(i32 %153)
  %155 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %156 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %142, %112
  %158 = load i32, i32* %8, align 4
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %16, align 8
  %161 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  store i8* %159, i8** %166, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %169 = call i32 @ocfs2_journal_dirty(i32* %167, %struct.buffer_head* %168)
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %172 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %157, %96, %82
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inode_trylock(%struct.inode*) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i32, i8*) #1

declare dso_local i32 @ocfs2_truncate_recs_per_inode(i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_truncate_log_append(i64, i32, i32, i32) #1

declare dso_local i64 @ocfs2_truncate_log_can_coalesce(%struct.ocfs2_truncate_log*, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
