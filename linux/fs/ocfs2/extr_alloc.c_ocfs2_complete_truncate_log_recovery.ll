; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_complete_truncate_log_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_complete_truncate_log_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Asked to recover my own truncate log!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_TRUNCATE_LOG_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_complete_truncate_log_recovery(%struct.ocfs2_super* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_dinode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.ocfs2_truncate_log*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %13, align 8
  %18 = load %struct.inode*, %struct.inode** %13, align 8
  %19 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @le64_to_cpu(i32 %24)
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @ML_ERROR, align 4
  %29 = call i32 @mlog(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %2
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %35, %struct.ocfs2_truncate_log** %14, align 8
  %36 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %14, align 8
  %37 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le16_to_cpu(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %41 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @le64_to_cpu(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @trace_ocfs2_complete_truncate_log_recovery(i64 %43, i32 %44)
  %46 = load %struct.inode*, %struct.inode** %13, align 8
  %47 = call i32 @inode_lock(%struct.inode* %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %115, %32
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %118

52:                                               ; preds = %48
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %54 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %58 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %119

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %67 = load i32, i32* @OCFS2_TRUNCATE_LOG_UPDATE, align 4
  %68 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %66, i32 %67)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i64 @IS_ERR(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @PTR_ERR(i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %119

77:                                               ; preds = %65
  %78 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %14, align 8
  %79 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %14, align 8
  %88 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %97 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @ocfs2_clusters_to_blocks(i32 %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @ocfs2_truncate_log_append(%struct.ocfs2_super* %101, i32* %102, i32 %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %106, i32* %107)
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %77
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %119

114:                                              ; preds = %77
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %48

118:                                              ; preds = %48
  br label %119

119:                                              ; preds = %118, %111, %72, %61
  %120 = load %struct.inode*, %struct.inode** %13, align 8
  %121 = call i32 @inode_unlock(%struct.inode* %120)
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %27
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_complete_truncate_log_recovery(i64, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_truncate_log_append(%struct.ocfs2_super*, i32*, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
