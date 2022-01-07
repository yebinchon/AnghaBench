; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_sync_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.ocfs2_super = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@JBD2_BARRIER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @ocfs2_sync_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_sync_file(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ocfs2_super*, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %11, align 8
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_16__* %25)
  store %struct.ocfs2_super* %26, %struct.ocfs2_super** %12, align 8
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %27)
  store %struct.ocfs2_inode_info* %28, %struct.ocfs2_inode_info** %13, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %14, align 8
  store i32 0, i32* %17, align 4
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = load %struct.file*, %struct.file** %6, align 8
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %41 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.file*, %struct.file** %6, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.file*, %struct.file** %6, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 @trace_ocfs2_sync_file(%struct.inode* %34, %struct.file* %35, %struct.TYPE_15__* %39, i32 %42, i32 %49, i32 %56, i64 %58)
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %61 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %4
  %64 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %65 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %4
  %68 = load i32, i32* @EROFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %138

70:                                               ; preds = %63
  %71 = load %struct.file*, %struct.file** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @file_write_and_wait_range(%struct.file* %71, i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %138

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %84 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  br label %90

86:                                               ; preds = %79
  %87 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %88 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32 [ %85, %82 ], [ %89, %86 ]
  store i32 %91, i32* %16, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @JBD2_BARRIER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @jbd2_trans_will_send_data_barrier(%struct.TYPE_14__* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 1, i32* %17, align 4
  br label %104

104:                                              ; preds = %103, %98, %90
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @jbd2_complete_transaction(%struct.TYPE_14__* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load %struct.inode*, %struct.inode** %11, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @blkdev_issue_flush(i32 %115, i32 %116, i32* null)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %120, %110
  br label %123

123:                                              ; preds = %122, %104
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @mlog_errno(i32 %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  br label %136

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %132
  %137 = phi i32 [ %134, %132 ], [ 0, %135 ]
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %77, %67
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_16__*) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_sync_file(%struct.inode*, %struct.file*, %struct.TYPE_15__*, i32, i32, i32, i64) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i32, i32) #1

declare dso_local i32 @jbd2_trans_will_send_data_barrier(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @jbd2_complete_transaction(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
