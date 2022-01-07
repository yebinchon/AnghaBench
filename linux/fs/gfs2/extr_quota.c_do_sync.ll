; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_do_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_do_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_5__*, i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sort_qd = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i64 0, align 8
@QDF_REFRESH = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_DO_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gfs2_quota_data**)* @do_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sync(i32 %0, %struct.gfs2_quota_data** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_quota_data**, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_alloc_parms, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gfs2_holder*, align 8
  %12 = alloca %struct.gfs2_holder, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gfs2_quota_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.gfs2_quota_data** %1, %struct.gfs2_quota_data*** %5, align 8
  %21 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %22 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %21, align 8
  %23 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %26, align 8
  store %struct.gfs2_sbd* %27, %struct.gfs2_sbd** %6, align 8
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.gfs2_inode* @GFS2_I(i32 %30)
  store %struct.gfs2_inode* %31, %struct.gfs2_inode** %7, align 8
  %32 = bitcast %struct.gfs2_alloc_parms* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 8, i1 false)
  store i32 0, i32* %18, align 4
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %34 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %20, align 4
  store i32 %38, i32* %3, align 4
  br label %240

39:                                               ; preds = %2
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %41 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %40, i32 4, i32* %9, i32* %10)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = call %struct.gfs2_holder* @kmalloc_array(i32 %42, i32 4, i32 %43)
  store %struct.gfs2_holder* %44, %struct.gfs2_holder** %11, align 8
  %45 = load %struct.gfs2_holder*, %struct.gfs2_holder** %11, align 8
  %46 = icmp ne %struct.gfs2_holder* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %240

50:                                               ; preds = %39
  %51 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @sort_qd, align 4
  %54 = call i32 @sort(%struct.gfs2_quota_data** %51, i32 %52, i32 8, i32 %53, i32* null)
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 1
  %57 = call i32 @inode_lock(i32* %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %81, %50
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %63, i64 %65
  %67 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %66, align 8
  %68 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %71 = load i32, i32* @GL_NOCACHE, align 4
  %72 = load %struct.gfs2_holder*, %struct.gfs2_holder** %11, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %72, i64 %74
  %76 = call i32 @gfs2_glock_nq_init(%struct.TYPE_5__* %69, i32 %70, i32 %71, %struct.gfs2_holder* %75)
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %209

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %86 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %89 = call i32 @gfs2_glock_nq_init(%struct.TYPE_5__* %87, i32 %88, i32 0, %struct.gfs2_holder* %12)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %209

93:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %99, i64 %101
  %103 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %102, align 8
  %104 = call i32 @qd2offset(%struct.gfs2_quota_data* %103)
  store i32 %104, i32* %17, align 4
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %106 = load i32, i32* %17, align 4
  %107 = call i64 @gfs2_write_alloc_required(%struct.gfs2_inode* %105, i32 %106, i32 4)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i32, i32* %18, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %109, %98
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %14, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %94

116:                                              ; preds = %94
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %9, align 4
  %119 = mul i32 %117, %118
  %120 = load i32, i32* @RES_DINODE, align 4
  %121 = add i32 %119, %120
  %122 = load i32, i32* %4, align 4
  %123 = add i32 %121, %122
  %124 = add i32 %123, 3
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %126, %127
  %129 = mul i32 %125, %128
  %130 = add i32 1, %129
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %8, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %134 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %133, %struct.gfs2_alloc_parms* %8)
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %116
  br label %207

138:                                              ; preds = %116
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %142, i32 %143)
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %10, align 4
  %147 = mul i32 %145, %146
  %148 = zext i32 %147 to i64
  %149 = add nsw i64 %144, %148
  %150 = load i64, i64* @RES_STATFS, align 8
  %151 = add nsw i64 %149, %150
  %152 = load i32, i32* %19, align 4
  %153 = zext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %19, align 4
  br label %156

156:                                              ; preds = %141, %138
  %157 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %157, i32 %158, i32 0)
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %204

163:                                              ; preds = %156
  store i32 0, i32* %14, align 4
  br label %164

164:                                              ; preds = %197, %163
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %200

168:                                              ; preds = %164
  %169 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %170 = load i32, i32* %14, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %169, i64 %171
  %173 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %172, align 8
  store %struct.gfs2_quota_data* %173, %struct.gfs2_quota_data** %15, align 8
  %174 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %175 = call i32 @qd2offset(%struct.gfs2_quota_data* %174)
  store i32 %175, i32* %17, align 4
  %176 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %177 = load i32, i32* %17, align 4
  %178 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %179 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %182 = call i32 @gfs2_adjust_quota(%struct.gfs2_inode* %176, i32 %177, i32 %180, %struct.gfs2_quota_data* %181, i32* null)
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %20, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %168
  br label %201

186:                                              ; preds = %168
  %187 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %188 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %189 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 0, %190
  %192 = call i32 @do_qc(%struct.gfs2_quota_data* %187, i32 %191)
  %193 = load i32, i32* @QDF_REFRESH, align 4
  %194 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %195 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %194, i32 0, i32 0
  %196 = call i32 @set_bit(i32 %193, i32* %195)
  br label %197

197:                                              ; preds = %186
  %198 = load i32, i32* %14, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %14, align 4
  br label %164

200:                                              ; preds = %164
  store i32 0, i32* %20, align 4
  br label %201

201:                                              ; preds = %200, %185
  %202 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %203 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %202)
  br label %204

204:                                              ; preds = %201, %162
  %205 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %206 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %205)
  br label %207

207:                                              ; preds = %204, %137
  %208 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %12)
  br label %209

209:                                              ; preds = %207, %92, %79
  br label %210

210:                                              ; preds = %214, %209
  %211 = load i32, i32* %13, align 4
  %212 = add i32 %211, -1
  store i32 %212, i32* %13, align 4
  %213 = icmp ne i32 %211, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  %215 = load %struct.gfs2_holder*, %struct.gfs2_holder** %11, align 8
  %216 = load i32, i32* %13, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %215, i64 %217
  %219 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %218)
  br label %210

220:                                              ; preds = %210
  %221 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %222 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %221, i32 0, i32 1
  %223 = call i32 @inode_unlock(i32* %222)
  %224 = load %struct.gfs2_holder*, %struct.gfs2_holder** %11, align 8
  %225 = call i32 @kfree(%struct.gfs2_holder* %224)
  %226 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %227 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %226, i32 0, i32 0
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %230, align 8
  %232 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %233 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %232, i32 0, i32 0
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %236 = load i32, i32* @GFS2_LFC_DO_SYNC, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %231, %struct.TYPE_5__* %234, i32 %237)
  %239 = load i32, i32* %20, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %220, %47, %37
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local %struct.gfs2_holder* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sort(%struct.gfs2_quota_data**, i32, i32, i32, i32*) #1

declare dso_local i32 @inode_lock(i32*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.TYPE_5__*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @qd2offset(%struct.gfs2_quota_data*) #1

declare dso_local i64 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_adjust_quota(%struct.gfs2_inode*, i32, i32, %struct.gfs2_quota_data*, i32*) #1

declare dso_local i32 @do_qc(%struct.gfs2_quota_data*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @inode_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
