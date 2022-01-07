; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_acquire_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_acquire_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_8__, %struct.super_block* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_mem_dqinfo = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_7__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@init_user_ns = common dso_local global i32 0, align 4
@DQ_ACTIVE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_acquire_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_acquire_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.dquot*, %struct.dquot** %2, align 8
  %14 = getelementptr inbounds %struct.dquot, %struct.dquot* %13, i32 0, i32 5
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %16)
  store %struct.ocfs2_super* %17, %struct.ocfs2_super** %7, align 8
  %18 = load %struct.dquot*, %struct.dquot** %2, align 8
  %19 = getelementptr inbounds %struct.dquot, %struct.dquot* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.TYPE_7__* @sb_dqinfo(%struct.super_block* %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %25, align 8
  store %struct.ocfs2_mem_dqinfo* %26, %struct.ocfs2_mem_dqinfo** %9, align 8
  %27 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %28 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %27, i32 0, i32 1
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %10, align 8
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ocfs2_global_qinit_alloc(%struct.super_block* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.dquot*, %struct.dquot** %2, align 8
  %34 = getelementptr inbounds %struct.dquot, %struct.dquot* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @from_kqid(i32* @init_user_ns, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @trace_ocfs2_acquire_dquot(i32 %37, i32 %38)
  %40 = load %struct.dquot*, %struct.dquot** %2, align 8
  %41 = getelementptr inbounds %struct.dquot, %struct.dquot* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %44 = call i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo* %43, i32 1)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  br label %174

48:                                               ; preds = %1
  %49 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %50 = call i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %49, i32 0)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %157

54:                                               ; preds = %48
  %55 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %56 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %55, i32 0, i32 0
  %57 = load %struct.dquot*, %struct.dquot** %2, align 8
  %58 = call i32 @qtree_read_dquot(i32* %56, %struct.dquot* %57)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %60 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %59, i32 0)
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %157

64:                                               ; preds = %54
  %65 = load %struct.dquot*, %struct.dquot** %2, align 8
  %66 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %65)
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.dquot*, %struct.dquot** %2, align 8
  %71 = getelementptr inbounds %struct.dquot, %struct.dquot* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dquot*, %struct.dquot** %2, align 8
  %75 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.dquot*, %struct.dquot** %2, align 8
  %78 = getelementptr inbounds %struct.dquot, %struct.dquot* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dquot*, %struct.dquot** %2, align 8
  %82 = call %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot* %81)
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.dquot*, %struct.dquot** %2, align 8
  %85 = getelementptr inbounds %struct.dquot, %struct.dquot* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  %89 = call i32 (...) @journal_current_handle()
  %90 = call i32 @WARN_ON(i32 %89)
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = call i64 @i_size_read(%struct.inode* %92)
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %94, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %93, %99
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = call i64 @i_size_read(%struct.inode* %101)
  %103 = call i32 @ocfs2_extend_no_holes(%struct.inode* %91, i32* null, i64 %100, i64 %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  br label %157

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %64
  %109 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %110 = load %struct.super_block*, %struct.super_block** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @ocfs2_calc_global_qinit_credits(%struct.super_block* %110, i32 %111)
  %113 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %109, i32 %112)
  store i32* %113, i32** %12, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i64 @IS_ERR(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @PTR_ERR(i32* %118)
  store i32 %119, i32* %3, align 4
  br label %157

120:                                              ; preds = %108
  %121 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %121, i32 %122)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %153

127:                                              ; preds = %120
  %128 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %129 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %128, i32 0, i32 0
  %130 = load %struct.dquot*, %struct.dquot** %2, align 8
  %131 = call i32 @qtree_write_dquot(i32* %129, %struct.dquot* %130)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %127
  %135 = load %struct.super_block*, %struct.super_block** %6, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call %struct.TYPE_7__* @sb_dqinfo(%struct.super_block* %135, i32 %136)
  %138 = call i64 @info_dirty(%struct.TYPE_7__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load %struct.super_block*, %struct.super_block** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @__ocfs2_global_write_info(%struct.super_block* %141, i32 %142)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %140
  br label %149

149:                                              ; preds = %148, %134, %127
  %150 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %126
  %154 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %154, i32* %155)
  br label %157

157:                                              ; preds = %153, %117, %106, %63, %53
  %158 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %159 = call i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo* %158, i32 1)
  %160 = load i32, i32* %3, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %174

163:                                              ; preds = %157
  %164 = load %struct.dquot*, %struct.dquot** %2, align 8
  %165 = call i32 @ocfs2_create_local_dquot(%struct.dquot* %164)
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* %3, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %174

169:                                              ; preds = %163
  %170 = load i32, i32* @DQ_ACTIVE_B, align 4
  %171 = load %struct.dquot*, %struct.dquot** %2, align 8
  %172 = getelementptr inbounds %struct.dquot, %struct.dquot* %171, i32 0, i32 1
  %173 = call i32 @set_bit(i32 %170, i32* %172)
  br label %174

174:                                              ; preds = %169, %168, %162, %47
  %175 = load %struct.dquot*, %struct.dquot** %2, align 8
  %176 = getelementptr inbounds %struct.dquot, %struct.dquot* %175, i32 0, i32 0
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load i32, i32* %3, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @mlog_errno(i32 %181)
  br label %183

183:                                              ; preds = %180, %174
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_7__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_global_qinit_alloc(%struct.super_block*, i32) #1

declare dso_local i32 @trace_ocfs2_acquire_dquot(i32, i32) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_lock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @qtree_read_dquot(i32*, %struct.dquot*) #1

declare dso_local i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local %struct.TYPE_9__* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @journal_current_handle(...) #1

declare dso_local i32 @ocfs2_extend_no_holes(%struct.inode*, i32*, i64, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_calc_global_qinit_credits(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @qtree_write_dquot(i32*, %struct.dquot*) #1

declare dso_local i64 @info_dirty(%struct.TYPE_7__*) #1

declare dso_local i32 @__ocfs2_global_write_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_global_qf(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @ocfs2_create_local_dquot(%struct.dquot*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
