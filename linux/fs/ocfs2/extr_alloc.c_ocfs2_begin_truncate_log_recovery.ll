; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_begin_truncate_log_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_begin_truncate_log_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_truncate_log }
%struct.ocfs2_truncate_log = type { i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_begin_truncate_log_recovery(%struct.ocfs2_super* %0, i32 %1, %struct.ocfs2_dinode** %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dinode**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_truncate_log*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_dinode** %2, %struct.ocfs2_dinode*** %6, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %12 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @trace_ocfs2_begin_truncate_log_recovery(i32 %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ocfs2_get_truncate_log_info(%struct.ocfs2_super* %15, i32 %16, %struct.inode** %8, %struct.buffer_head** %9)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  br label %89

23:                                               ; preds = %3
  %24 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %10, align 8
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %29 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %35 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.ocfs2_truncate_log* %36, %struct.ocfs2_truncate_log** %11, align 8
  %37 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %11, align 8
  %38 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @le16_to_cpu(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %23
  %43 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %11, align 8
  %44 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @le16_to_cpu(i64 %45)
  %47 = call i32 @trace_ocfs2_truncate_log_recovery_num(i64 %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.ocfs2_dinode* @kmemdup(i64 %50, i32 %53, i32 %54)
  %56 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* %55, %struct.ocfs2_dinode** %56, align 8
  %57 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %58 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %57, align 8
  %59 = icmp ne %struct.ocfs2_dinode* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %42
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %89

65:                                               ; preds = %42
  %66 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %11, align 8
  %67 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %75 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %74, i32 0, i32 0
  %76 = call i32 @ocfs2_compute_meta_ecc(i32 %70, i64 %73, i32* %75)
  %77 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call i32 @INODE_CACHE(%struct.inode* %79)
  %81 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %77, %struct.buffer_head* %78, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %65
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %89

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %23
  br label %89

89:                                               ; preds = %88, %84, %60, %20
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = call i32 @iput(%struct.inode* %90)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %98 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %97, align 8
  %99 = call i32 @kfree(%struct.ocfs2_dinode* %98)
  %100 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @trace_ocfs2_begin_truncate_log_recovery(i32) #1

declare dso_local i32 @ocfs2_get_truncate_log_info(%struct.ocfs2_super*, i32, %struct.inode**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @trace_ocfs2_truncate_log_recovery_num(i64) #1

declare dso_local %struct.ocfs2_dinode* @kmemdup(i64, i32, i32) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(i32, i64, i32*) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
