; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqflush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dquot = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.xfs_mount* }
%struct.TYPE_4__ = type { %struct.xfs_log_item, i32 }
%struct.xfs_log_item = type { i32 }
%struct.xfs_mount = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_buf = type { %struct.xfs_dqblk* }
%struct.xfs_dqblk = type { i32, %struct.xfs_disk_dquot }
%struct.xfs_disk_dquot = type { i32 }

@XFS_DQ_DIRTY = common dso_local global i32 0, align 4
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@xfs_dquot_buf_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"corrupt dquot ID 0x%x in memory at %pS\00", align 1
@XFS_DQUOT_CRC_OFF = common dso_local global i32 0, align 4
@xfs_qm_dqflush_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_dqflush(%struct.xfs_dquot* %0, %struct.xfs_buf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_dquot*, align 8
  %5 = alloca %struct.xfs_buf**, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca %struct.xfs_dqblk*, align 8
  %9 = alloca %struct.xfs_disk_dquot*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_log_item*, align 8
  store %struct.xfs_dquot* %0, %struct.xfs_dquot** %4, align 8
  store %struct.xfs_buf** %1, %struct.xfs_buf*** %5, align 8
  %13 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %13, i32 0, i32 6
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %6, align 8
  %16 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %17 = call i32 @XFS_DQ_IS_LOCKED(%struct.xfs_dquot* %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %19, i32 0, i32 5
  %21 = call i32 @completion_done(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %27 = call i32 @trace_xfs_dqflush(%struct.xfs_dquot* %26)
  %28 = load %struct.xfs_buf**, %struct.xfs_buf*** %5, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %28, align 8
  %29 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %30 = call i32 @xfs_qm_dqunpin_wait(%struct.xfs_dquot* %29)
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %32 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %2
  %35 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.xfs_log_item* %37, %struct.xfs_log_item** %12, align 8
  %38 = load i32, i32* @XFS_DQ_DIRTY, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %41 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.xfs_log_item*, %struct.xfs_log_item** %12, align 8
  %45 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %46 = call i32 @xfs_trans_ail_remove(%struct.xfs_log_item* %44, i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %162

49:                                               ; preds = %2
  %50 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %51 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %52 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %55 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xfs_trans_read_buf(%struct.xfs_mount* %50, i32* null, i32 %53, i32 %56, i32 %61, i32 0, %struct.xfs_buf** %7, i32* @xfs_dquot_buf_ops)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %162

66:                                               ; preds = %49
  %67 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %68 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %67, i32 0, i32 0
  %69 = load %struct.xfs_dqblk*, %struct.xfs_dqblk** %68, align 8
  %70 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %71 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.xfs_dqblk, %struct.xfs_dqblk* %69, i64 %73
  store %struct.xfs_dqblk* %74, %struct.xfs_dqblk** %8, align 8
  %75 = load %struct.xfs_dqblk*, %struct.xfs_dqblk** %8, align 8
  %76 = getelementptr inbounds %struct.xfs_dqblk, %struct.xfs_dqblk* %75, i32 0, i32 1
  store %struct.xfs_disk_dquot* %76, %struct.xfs_disk_dquot** %9, align 8
  %77 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %78 = load %struct.xfs_dqblk*, %struct.xfs_dqblk** %8, align 8
  %79 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %9, align 8
  %80 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = call i64 @xfs_dqblk_verify(%struct.xfs_mount* %77, %struct.xfs_dqblk* %78, i32 %82, i32 0)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %66
  %87 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %88 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %9, align 8
  %89 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be32_to_cpu(i32 %90)
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @xfs_alert(%struct.xfs_mount* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %91, i64 %92)
  %94 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %95 = call i32 @xfs_buf_relse(%struct.xfs_buf* %94)
  %96 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %97 = call i32 @xfs_dqfunlock(%struct.xfs_dquot* %96)
  %98 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %99 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %100 = call i32 @xfs_force_shutdown(%struct.xfs_mount* %98, i32 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %167

103:                                              ; preds = %66
  %104 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %9, align 8
  %105 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %106 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %105, i32 0, i32 3
  %107 = call i32 @memcpy(%struct.xfs_disk_dquot* %104, i32* %106, i32 4)
  %108 = load i32, i32* @XFS_DQ_DIRTY, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %111 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %115 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %118 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %121 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %122, i32 0, i32 0
  %124 = call i32 @xfs_trans_ail_copy_lsn(i32 %116, i32* %119, i32* %123)
  %125 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %126 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %125, i32 0, i32 0
  %127 = call i64 @xfs_sb_version_hascrc(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %103
  %130 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %131 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.xfs_log_item, %struct.xfs_log_item* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cpu_to_be64(i32 %134)
  %136 = load %struct.xfs_dqblk*, %struct.xfs_dqblk** %8, align 8
  %137 = getelementptr inbounds %struct.xfs_dqblk, %struct.xfs_dqblk* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load %struct.xfs_dqblk*, %struct.xfs_dqblk** %8, align 8
  %139 = bitcast %struct.xfs_dqblk* %138 to i8*
  %140 = load i32, i32* @XFS_DQUOT_CRC_OFF, align 4
  %141 = call i32 @xfs_update_cksum(i8* %139, i32 8, i32 %140)
  br label %142

142:                                              ; preds = %129, %103
  %143 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %144 = load i32, i32* @xfs_qm_dqflush_done, align 4
  %145 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %146 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = call i32 @xfs_buf_attach_iodone(%struct.xfs_buf* %143, i32 %144, %struct.xfs_log_item* %147)
  %149 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %150 = call i64 @xfs_buf_ispinned(%struct.xfs_buf* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %154 = call i32 @trace_xfs_dqflush_force(%struct.xfs_dquot* %153)
  %155 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %156 = call i32 @xfs_log_force(%struct.xfs_mount* %155, i32 0)
  br label %157

157:                                              ; preds = %152, %142
  %158 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %159 = call i32 @trace_xfs_dqflush_done(%struct.xfs_dquot* %158)
  %160 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %161 = load %struct.xfs_buf**, %struct.xfs_buf*** %5, align 8
  store %struct.xfs_buf* %160, %struct.xfs_buf** %161, align 8
  store i32 0, i32* %3, align 4
  br label %167

162:                                              ; preds = %65, %34
  %163 = load %struct.xfs_dquot*, %struct.xfs_dquot** %4, align 8
  %164 = call i32 @xfs_dqfunlock(%struct.xfs_dquot* %163)
  %165 = load i32, i32* @EIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %157, %86
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_DQ_IS_LOCKED(%struct.xfs_dquot*) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @trace_xfs_dqflush(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_qm_dqunpin_wait(%struct.xfs_dquot*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_ail_remove(%struct.xfs_log_item*, i32) #1

declare dso_local i32 @xfs_trans_read_buf(%struct.xfs_mount*, i32*, i32, i32, i32, i32, %struct.xfs_buf**, i32*) #1

declare dso_local i64 @xfs_dqblk_verify(%struct.xfs_mount*, %struct.xfs_dqblk*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_alert(%struct.xfs_mount*, i8*, i32, i64) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_dqfunlock(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_force_shutdown(%struct.xfs_mount*, i32) #1

declare dso_local i32 @memcpy(%struct.xfs_disk_dquot*, i32*, i32) #1

declare dso_local i32 @xfs_trans_ail_copy_lsn(i32, i32*, i32*) #1

declare dso_local i64 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @xfs_update_cksum(i8*, i32, i32) #1

declare dso_local i32 @xfs_buf_attach_iodone(%struct.xfs_buf*, i32, %struct.xfs_log_item*) #1

declare dso_local i64 @xfs_buf_ispinned(%struct.xfs_buf*) #1

declare dso_local i32 @trace_xfs_dqflush_force(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_log_force(%struct.xfs_mount*, i32) #1

declare dso_local i32 @trace_xfs_dqflush_done(%struct.xfs_dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
