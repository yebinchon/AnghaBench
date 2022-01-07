; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsync.c_ext4_sync_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsync.c_ext4_sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.ext4_inode_info = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }

@EIO = common dso_local global i32 0, align 4
@EXT4_MF_FS_ABORTED = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@BARRIER = common dso_local global i32 0, align 4
@JBD2_BARRIER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_sync_file(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_inode_info*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %22)
  store %struct.ext4_inode_info* %23, %struct.ext4_inode_info** %11, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = call %struct.TYPE_14__* @EXT4_SB(%struct.TYPE_13__* %26)
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = call %struct.TYPE_14__* @EXT4_SB(%struct.TYPE_13__* %32)
  %34 = call i32 @ext4_forced_shutdown(%struct.TYPE_14__* %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %167

40:                                               ; preds = %4
  %41 = call i32* (...) @ext4_journal_current_handle()
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @J_ASSERT(i32 %43)
  %45 = load %struct.file*, %struct.file** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @trace_ext4_sync_file_enter(%struct.file* %45, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = call i64 @sb_rdonly(%struct.TYPE_13__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %40
  %54 = call i32 (...) @smp_rmb()
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = call %struct.TYPE_14__* @EXT4_SB(%struct.TYPE_13__* %57)
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EXT4_MF_FS_ABORTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @EROFS, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %64, %53
  br label %155

68:                                               ; preds = %40
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %91, label %71

71:                                               ; preds = %68
  %72 = load %struct.file*, %struct.file** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @__generic_file_fsync(%struct.file* %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = call i32 @ext4_sync_parent(%struct.inode* %80)
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = load i32, i32* @BARRIER, align 4
  %87 = call i64 @test_opt(%struct.TYPE_13__* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %141

90:                                               ; preds = %82
  br label %155

91:                                               ; preds = %68
  %92 = load %struct.file*, %struct.file** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @file_write_and_wait_range(%struct.file* %92, i32 %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %5, align 4
  br label %167

100:                                              ; preds = %91
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = call i64 @ext4_should_journal_data(%struct.inode* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = call i32 @ext4_force_commit(%struct.TYPE_13__* %107)
  store i32 %108, i32* %13, align 4
  br label %155

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %11, align 8
  %114 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  br label %120

116:                                              ; preds = %109
  %117 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %11, align 8
  %118 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i32 [ %115, %112 ], [ %119, %116 ]
  store i32 %121, i32* %15, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @JBD2_BARRIER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @jbd2_trans_will_send_data_barrier(%struct.TYPE_12__* %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  store i32 1, i32* %16, align 4
  br label %134

134:                                              ; preds = %133, %128, %120
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @jbd2_complete_transaction(%struct.TYPE_12__* %135, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %89
  %142 = load %struct.inode*, %struct.inode** %10, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i32 @blkdev_issue_flush(i32 %146, i32 %147, i32* null)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %141
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %151, %141
  br label %154

154:                                              ; preds = %153, %134
  br label %155

155:                                              ; preds = %154, %104, %90, %67
  %156 = load %struct.file*, %struct.file** %6, align 8
  %157 = call i32 @file_check_and_advance_wb_err(%struct.file* %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %160, %155
  %163 = load %struct.inode*, %struct.inode** %10, align 8
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @trace_ext4_sync_file_exit(%struct.inode* %163, i32 %164)
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %162, %98, %37
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.TYPE_14__* @EXT4_SB(%struct.TYPE_13__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(%struct.TYPE_14__*) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @trace_ext4_sync_file_enter(%struct.file*, i32) #1

declare dso_local i64 @sb_rdonly(%struct.TYPE_13__*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @__generic_file_fsync(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @ext4_sync_parent(%struct.inode*) #1

declare dso_local i64 @test_opt(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i32, i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_force_commit(%struct.TYPE_13__*) #1

declare dso_local i32 @jbd2_trans_will_send_data_barrier(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @jbd2_complete_transaction(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32, i32*) #1

declare dso_local i32 @file_check_and_advance_wb_err(%struct.file*) #1

declare dso_local i32 @trace_ext4_sync_file_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
