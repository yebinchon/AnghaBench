; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_set_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_set_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.qc_dqblk = type { i32, i32, i32, i32 }
%struct.kqid = type { i64 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_quota_data = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }

@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i64 0, align 8
@GRPQUOTA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFS2_FIELDMASK = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@QC_SPC_SOFT = common dso_local global i32 0, align 4
@QC_SPC_HARD = common dso_local global i32 0, align 4
@QC_SPACE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@QDF_QMSG_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, %struct.qc_dqblk*)* @gfs2_set_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_set_dqblk(%struct.super_block* %0, i64 %1, %struct.qc_dqblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqid, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.qc_dqblk*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_quota_data*, align 8
  %11 = alloca %struct.gfs2_holder, align 4
  %12 = alloca %struct.gfs2_holder, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.gfs2_alloc_parms, align 4
  %20 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  store i64 %1, i64* %20, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.qc_dqblk* %2, %struct.qc_dqblk** %7, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %22, align 8
  store %struct.gfs2_sbd* %23, %struct.gfs2_sbd** %8, align 8
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.gfs2_inode* @GFS2_I(i32 %26)
  store %struct.gfs2_inode* %27, %struct.gfs2_inode** %9, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ESRCH, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %276

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @USRQUOTA, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GRPQUOTA, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %276

50:                                               ; preds = %42, %37
  %51 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %52 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GFS2_FIELDMASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %276

61:                                               ; preds = %50
  %62 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %63 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @qd_get(%struct.gfs2_sbd* %62, i64 %64, %struct.gfs2_quota_data** %10)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %4, align 4
  br label %276

70:                                               ; preds = %61
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %72 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %272

76:                                               ; preds = %70
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %78 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %77, i32 0, i32 0
  %79 = call i32 @inode_lock(i32* %78)
  %80 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %81 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %84 = call i32 @gfs2_glock_nq_init(i32 %82, i32 %83, i32 0, %struct.gfs2_holder* %11)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %268

88:                                               ; preds = %76
  %89 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %90 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %93 = call i32 @gfs2_glock_nq_init(i32 %91, i32 %92, i32 0, %struct.gfs2_holder* %12)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %266

97:                                               ; preds = %88
  %98 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %99 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %100 = call i32 @update_qd(%struct.gfs2_sbd* %98, %struct.gfs2_quota_data* %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %264

104:                                              ; preds = %97
  %105 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %106 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @QC_SPC_SOFT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %104
  %112 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %113 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %116 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = ashr i32 %114, %118
  %120 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %121 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @be64_to_cpu(i32 %123)
  %125 = icmp eq i32 %119, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %111
  %127 = load i32, i32* @QC_SPC_SOFT, align 4
  %128 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %129 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %111, %104
  %133 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %134 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @QC_SPC_HARD, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %132
  %140 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %141 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %144 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %142, %146
  %148 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %149 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @be64_to_cpu(i32 %151)
  %153 = icmp eq i32 %147, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %139
  %155 = load i32, i32* @QC_SPC_HARD, align 4
  %156 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %157 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %139, %132
  %161 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %162 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @QC_SPACE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %160
  %168 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %169 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %172 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = ashr i32 %170, %174
  %176 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %177 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @be64_to_cpu(i32 %179)
  %181 = icmp eq i32 %175, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %167
  %183 = load i32, i32* @QC_SPACE, align 4
  %184 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %185 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = xor i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %182, %167, %160
  %189 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %190 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %264

194:                                              ; preds = %188
  %195 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %196 = call i32 @qd2offset(%struct.gfs2_quota_data* %195)
  store i32 %196, i32* %17, align 4
  %197 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %197, i32 %198, i32 4)
  store i32 %199, i32* %16, align 4
  %200 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %201 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  store i32 1, i32* %16, align 4
  br label %204

204:                                              ; preds = %203, %194
  %205 = load i32, i32* %16, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %230

207:                                              ; preds = %204
  %208 = bitcast %struct.gfs2_alloc_parms* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %208, i8 0, i64 8, i1 false)
  %209 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %210 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %209, i32 4, i32* %13, i32* %14)
  %211 = load i32, i32* %13, align 4
  %212 = add i32 1, %211
  %213 = load i32, i32* %14, align 4
  %214 = add i32 %212, %213
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %15, align 4
  %216 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %19, i32 0, i32 0
  store i32 %215, i32* %216, align 4
  %217 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %218 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %217, %struct.gfs2_alloc_parms* %19)
  store i32 %218, i32* %18, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %207
  br label %264

222:                                              ; preds = %207
  %223 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %224 = load i32, i32* %15, align 4
  %225 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %223, i32 %224)
  %226 = load i32, i32* %15, align 4
  %227 = zext i32 %226 to i64
  %228 = add nsw i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %15, align 4
  br label %230

230:                                              ; preds = %222, %204
  %231 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %232 = load i32, i32* %15, align 4
  %233 = zext i32 %232 to i64
  %234 = load i64, i64* @RES_DINODE, align 8
  %235 = add nsw i64 %233, %234
  %236 = add nsw i64 %235, 2
  %237 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %231, i64 %236, i32 0)
  store i32 %237, i32* %18, align 4
  %238 = load i32, i32* %18, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %230
  br label %257

241:                                              ; preds = %230
  %242 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %243 = load i32, i32* %17, align 4
  %244 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %245 = load %struct.qc_dqblk*, %struct.qc_dqblk** %7, align 8
  %246 = call i32 @gfs2_adjust_quota(%struct.gfs2_inode* %242, i32 %243, i32 0, %struct.gfs2_quota_data* %244, %struct.qc_dqblk* %245)
  store i32 %246, i32* %18, align 4
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %241
  %250 = load i32, i32* @QDF_QMSG_QUIET, align 4
  %251 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %252 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %251, i32 0, i32 0
  %253 = call i32 @clear_bit(i32 %250, i32* %252)
  br label %254

254:                                              ; preds = %249, %241
  %255 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %256 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %255)
  br label %257

257:                                              ; preds = %254, %240
  %258 = load i32, i32* %16, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %262 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %261)
  br label %263

263:                                              ; preds = %260, %257
  br label %264

264:                                              ; preds = %263, %221, %193, %103
  %265 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %12)
  br label %266

266:                                              ; preds = %264, %96
  %267 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %11)
  br label %268

268:                                              ; preds = %266, %87
  %269 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %270 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %269, i32 0, i32 0
  %271 = call i32 @inode_unlock(i32* %270)
  br label %272

272:                                              ; preds = %268, %75
  %273 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %274 = call i32 @qd_put(%struct.gfs2_quota_data* %273)
  %275 = load i32, i32* %18, align 4
  store i32 %275, i32* %4, align 4
  br label %276

276:                                              ; preds = %272, %68, %58, %47, %34
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @qd_get(%struct.gfs2_sbd*, i64, %struct.gfs2_quota_data**) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @inode_lock(i32*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @update_qd(%struct.gfs2_sbd*, %struct.gfs2_quota_data*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @qd2offset(%struct.gfs2_quota_data*) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_adjust_quota(%struct.gfs2_inode*, i32, i32, %struct.gfs2_quota_data*, %struct.qc_dqblk*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @inode_unlock(i32*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
