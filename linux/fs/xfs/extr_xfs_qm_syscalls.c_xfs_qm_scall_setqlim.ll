; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_scall_setqlim.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_scall_setqlim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.xfs_quotainfo* }
%struct.xfs_quotainfo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.xfs_disk_dquot = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.xfs_dquot = type { i32, %struct.xfs_disk_dquot }
%struct.xfs_trans = type { i32 }
%struct.xfs_def_quota = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@XFS_QC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@QC_SPC_HARD = common dso_local global i32 0, align 4
@QC_SPC_SOFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"blkhard %Ld < blksoft %Ld\00", align 1
@QC_RT_SPC_HARD = common dso_local global i32 0, align 4
@QC_RT_SPC_SOFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"rtbhard %Ld < rtbsoft %Ld\00", align 1
@QC_INO_HARD = common dso_local global i32 0, align 4
@QC_INO_SOFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"ihard %Ld < isoft %Ld\00", align 1
@QC_SPC_WARNS = common dso_local global i32 0, align 4
@QC_INO_WARNS = common dso_local global i32 0, align 4
@QC_RT_SPC_WARNS = common dso_local global i32 0, align 4
@QC_SPC_TIMER = common dso_local global i32 0, align 4
@QC_INO_TIMER = common dso_local global i32 0, align 4
@QC_RT_SPC_TIMER = common dso_local global i32 0, align 4
@XFS_DQ_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_scall_setqlim(%struct.xfs_mount* %0, i64 %1, i32 %2, %struct.qc_dqblk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qc_dqblk*, align 8
  %10 = alloca %struct.xfs_quotainfo*, align 8
  %11 = alloca %struct.xfs_disk_dquot*, align 8
  %12 = alloca %struct.xfs_dquot*, align 8
  %13 = alloca %struct.xfs_trans*, align 8
  %14 = alloca %struct.xfs_def_quota*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qc_dqblk* %3, %struct.qc_dqblk** %9, align 8
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 0
  %20 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %19, align 8
  store %struct.xfs_quotainfo* %20, %struct.xfs_quotainfo** %10, align 8
  %21 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %22 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XFS_QC_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %447

31:                                               ; preds = %4
  %32 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %33 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XFS_QC_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %447

39:                                               ; preds = %31
  %40 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %41 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @xfs_qm_dqget(%struct.xfs_mount* %43, i64 %44, i32 %45, i32 1, %struct.xfs_dquot** %12)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  br label %442

56:                                               ; preds = %39
  %57 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %58 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %59 = call %struct.xfs_def_quota* @xfs_get_defquota(%struct.xfs_dquot* %57, %struct.xfs_quotainfo* %58)
  store %struct.xfs_def_quota* %59, %struct.xfs_def_quota** %14, align 8
  %60 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %61 = call i32 @xfs_dqunlock(%struct.xfs_dquot* %60)
  %62 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %64 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %62, i32* %65, i32 0, i32 0, i32 0, %struct.xfs_trans** %13)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %439

70:                                               ; preds = %56
  %71 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %72 = call i32 @xfs_dqlock(%struct.xfs_dquot* %71)
  %73 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %74 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %75 = call i32 @xfs_trans_dqjoin(%struct.xfs_trans* %73, %struct.xfs_dquot* %74)
  %76 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %77 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %76, i32 0, i32 1
  store %struct.xfs_disk_dquot* %77, %struct.xfs_disk_dquot** %11, align 8
  %78 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %79 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @QC_SPC_HARD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %86 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %87 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %86, i32 0, i32 12
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %85, i32 %88)
  br label %95

90:                                               ; preds = %70
  %91 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %92 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %91, i32 0, i32 11
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @be64_to_cpu(i8* %93)
  br label %95

95:                                               ; preds = %90, %84
  %96 = phi i64 [ %89, %84 ], [ %94, %90 ]
  store i64 %96, i64* %16, align 8
  %97 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %98 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @QC_SPC_SOFT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %105 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %106 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %104, i32 %107)
  br label %114

109:                                              ; preds = %95
  %110 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %111 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %110, i32 0, i32 10
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @be64_to_cpu(i8* %112)
  br label %114

114:                                              ; preds = %109, %103
  %115 = phi i64 [ %108, %103 ], [ %113, %109 ]
  store i64 %115, i64* %17, align 8
  %116 = load i64, i64* %16, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %17, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %118, %114
  %123 = load i64, i64* %16, align 8
  %124 = call i8* @cpu_to_be64(i64 %123)
  %125 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %126 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %125, i32 0, i32 11
  store i8* %124, i8** %126, align 8
  %127 = load i64, i64* %17, align 8
  %128 = call i8* @cpu_to_be64(i64 %127)
  %129 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %130 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %129, i32 0, i32 10
  store i8* %128, i8** %130, align 8
  %131 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %132 = call i32 @xfs_dquot_set_prealloc_limits(%struct.xfs_dquot* %131)
  %133 = load i64, i64* %7, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %122
  %136 = load i64, i64* %16, align 8
  %137 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %14, align 8
  %138 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %137, i32 0, i32 5
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %14, align 8
  %141 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %135, %122
  br label %148

143:                                              ; preds = %118
  %144 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %17, align 8
  %147 = call i32 @xfs_debug(%struct.xfs_mount* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %145, i64 %146)
  br label %148

148:                                              ; preds = %143, %142
  %149 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %150 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @QC_RT_SPC_HARD, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %157 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %158 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %156, i32 %159)
  br label %166

161:                                              ; preds = %148
  %162 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %163 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %162, i32 0, i32 9
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @be64_to_cpu(i8* %164)
  br label %166

166:                                              ; preds = %161, %155
  %167 = phi i64 [ %160, %155 ], [ %165, %161 ]
  store i64 %167, i64* %16, align 8
  %168 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %169 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @QC_RT_SPC_SOFT, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %166
  %175 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %176 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %177 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %175, i32 %178)
  br label %185

180:                                              ; preds = %166
  %181 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %182 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %181, i32 0, i32 8
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @be64_to_cpu(i8* %183)
  br label %185

185:                                              ; preds = %180, %174
  %186 = phi i64 [ %179, %174 ], [ %184, %180 ]
  store i64 %186, i64* %17, align 8
  %187 = load i64, i64* %16, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %16, align 8
  %191 = load i64, i64* %17, align 8
  %192 = icmp sge i64 %190, %191
  br i1 %192, label %193, label %212

193:                                              ; preds = %189, %185
  %194 = load i64, i64* %16, align 8
  %195 = call i8* @cpu_to_be64(i64 %194)
  %196 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %197 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %196, i32 0, i32 9
  store i8* %195, i8** %197, align 8
  %198 = load i64, i64* %17, align 8
  %199 = call i8* @cpu_to_be64(i64 %198)
  %200 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %201 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %200, i32 0, i32 8
  store i8* %199, i8** %201, align 8
  %202 = load i64, i64* %7, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %193
  %205 = load i64, i64* %16, align 8
  %206 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %14, align 8
  %207 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %206, i32 0, i32 3
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* %17, align 8
  %209 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %14, align 8
  %210 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %204, %193
  br label %217

212:                                              ; preds = %189
  %213 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %214 = load i64, i64* %16, align 8
  %215 = load i64, i64* %17, align 8
  %216 = call i32 @xfs_debug(%struct.xfs_mount* %213, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %214, i64 %215)
  br label %217

217:                                              ; preds = %212, %211
  %218 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %219 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @QC_INO_HARD, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %226 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %225, i32 0, i32 8
  %227 = load i64, i64* %226, align 8
  br label %233

228:                                              ; preds = %217
  %229 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %230 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %229, i32 0, i32 7
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @be64_to_cpu(i8* %231)
  br label %233

233:                                              ; preds = %228, %224
  %234 = phi i64 [ %227, %224 ], [ %232, %228 ]
  store i64 %234, i64* %16, align 8
  %235 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %236 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @QC_INO_SOFT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %233
  %242 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %243 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  br label %250

245:                                              ; preds = %233
  %246 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %247 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %246, i32 0, i32 6
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @be64_to_cpu(i8* %248)
  br label %250

250:                                              ; preds = %245, %241
  %251 = phi i64 [ %244, %241 ], [ %249, %245 ]
  store i64 %251, i64* %17, align 8
  %252 = load i64, i64* %16, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = load i64, i64* %16, align 8
  %256 = load i64, i64* %17, align 8
  %257 = icmp sge i64 %255, %256
  br i1 %257, label %258, label %277

258:                                              ; preds = %254, %250
  %259 = load i64, i64* %16, align 8
  %260 = call i8* @cpu_to_be64(i64 %259)
  %261 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %262 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %261, i32 0, i32 7
  store i8* %260, i8** %262, align 8
  %263 = load i64, i64* %17, align 8
  %264 = call i8* @cpu_to_be64(i64 %263)
  %265 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %266 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %265, i32 0, i32 6
  store i8* %264, i8** %266, align 8
  %267 = load i64, i64* %7, align 8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %258
  %270 = load i64, i64* %16, align 8
  %271 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %14, align 8
  %272 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %271, i32 0, i32 1
  store i64 %270, i64* %272, align 8
  %273 = load i64, i64* %17, align 8
  %274 = load %struct.xfs_def_quota*, %struct.xfs_def_quota** %14, align 8
  %275 = getelementptr inbounds %struct.xfs_def_quota, %struct.xfs_def_quota* %274, i32 0, i32 0
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %269, %258
  br label %282

277:                                              ; preds = %254
  %278 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %279 = load i64, i64* %16, align 8
  %280 = load i64, i64* %17, align 8
  %281 = call i32 @xfs_debug(%struct.xfs_mount* %278, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %279, i64 %280)
  br label %282

282:                                              ; preds = %277, %276
  %283 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %284 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @QC_SPC_WARNS, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %282
  %290 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %291 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = call i8* @cpu_to_be16(i32 %292)
  %294 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %295 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %294, i32 0, i32 5
  store i8* %293, i8** %295, align 8
  br label %296

296:                                              ; preds = %289, %282
  %297 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %298 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @QC_INO_WARNS, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %296
  %304 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %305 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call i8* @cpu_to_be16(i32 %306)
  %308 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %309 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %308, i32 0, i32 4
  store i8* %307, i8** %309, align 8
  br label %310

310:                                              ; preds = %303, %296
  %311 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %312 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @QC_RT_SPC_WARNS, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %310
  %318 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %319 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i8* @cpu_to_be16(i32 %320)
  %322 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %323 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %322, i32 0, i32 3
  store i8* %321, i8** %323, align 8
  br label %324

324:                                              ; preds = %317, %310
  %325 = load i64, i64* %7, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %424

327:                                              ; preds = %324
  %328 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %329 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @QC_SPC_TIMER, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %327
  %335 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %336 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %339 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %338, i32 0, i32 6
  store i32 %337, i32* %339, align 4
  %340 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %341 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = call i8* @cpu_to_be32(i32 %342)
  %344 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %345 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %344, i32 0, i32 2
  store i8* %343, i8** %345, align 8
  br label %346

346:                                              ; preds = %334, %327
  %347 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %348 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @QC_INO_TIMER, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %365

353:                                              ; preds = %346
  %354 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %355 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %354, i32 0, i32 5
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %358 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %357, i32 0, i32 5
  store i32 %356, i32* %358, align 4
  %359 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %360 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 4
  %362 = call i8* @cpu_to_be32(i32 %361)
  %363 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %364 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %363, i32 0, i32 1
  store i8* %362, i8** %364, align 8
  br label %365

365:                                              ; preds = %353, %346
  %366 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %367 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @QC_RT_SPC_TIMER, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %384

372:                                              ; preds = %365
  %373 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %374 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %377 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %376, i32 0, i32 4
  store i32 %375, i32* %377, align 4
  %378 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %379 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = call i8* @cpu_to_be32(i32 %380)
  %382 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %383 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %382, i32 0, i32 0
  store i8* %381, i8** %383, align 8
  br label %384

384:                                              ; preds = %372, %365
  %385 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %386 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load i32, i32* @QC_SPC_WARNS, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %397

391:                                              ; preds = %384
  %392 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %393 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %396 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %395, i32 0, i32 3
  store i32 %394, i32* %396, align 4
  br label %397

397:                                              ; preds = %391, %384
  %398 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %399 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @QC_INO_WARNS, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %397
  %405 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %406 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %409 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %408, i32 0, i32 2
  store i32 %407, i32* %409, align 4
  br label %410

410:                                              ; preds = %404, %397
  %411 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %412 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @QC_RT_SPC_WARNS, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %410
  %418 = load %struct.qc_dqblk*, %struct.qc_dqblk** %9, align 8
  %419 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %422 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %421, i32 0, i32 1
  store i32 %420, i32* %422, align 4
  br label %423

423:                                              ; preds = %417, %410
  br label %428

424:                                              ; preds = %324
  %425 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %426 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %427 = call i32 @xfs_qm_adjust_dqtimers(%struct.xfs_mount* %425, %struct.xfs_disk_dquot* %426)
  br label %428

428:                                              ; preds = %424, %423
  %429 = load i32, i32* @XFS_DQ_DIRTY, align 4
  %430 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %431 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = or i32 %432, %429
  store i32 %433, i32* %431, align 8
  %434 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %435 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %436 = call i32 @xfs_trans_log_dquot(%struct.xfs_trans* %434, %struct.xfs_dquot* %435)
  %437 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %438 = call i32 @xfs_trans_commit(%struct.xfs_trans* %437)
  store i32 %438, i32* %15, align 4
  br label %439

439:                                              ; preds = %428, %69
  %440 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %441 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %440)
  br label %442

442:                                              ; preds = %439, %49
  %443 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %444 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %443, i32 0, i32 0
  %445 = call i32 @mutex_unlock(i32* %444)
  %446 = load i32, i32* %15, align 4
  store i32 %446, i32* %5, align 4
  br label %447

447:                                              ; preds = %442, %38, %28
  %448 = load i32, i32* %5, align 4
  ret i32 %448
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xfs_qm_dqget(%struct.xfs_mount*, i64, i32, i32, %struct.xfs_dquot**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_def_quota* @xfs_get_defquota(%struct.xfs_dquot*, %struct.xfs_quotainfo*) #1

declare dso_local i32 @xfs_dqunlock(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_dqlock(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_trans_dqjoin(%struct.xfs_trans*, %struct.xfs_dquot*) #1

declare dso_local i64 @XFS_B_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i64 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dquot_set_prealloc_limits(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_debug(%struct.xfs_mount*, i8*, i64, i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_qm_adjust_dqtimers(%struct.xfs_mount*, %struct.xfs_disk_dquot*) #1

declare dso_local i32 @xfs_trans_log_dquot(%struct.xfs_trans*, %struct.xfs_dquot*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_qm_dqrele(%struct.xfs_dquot*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
