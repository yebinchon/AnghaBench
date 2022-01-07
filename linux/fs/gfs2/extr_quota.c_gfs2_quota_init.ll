; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_quota_change = type { i32, i32, i32 }
%struct.gfs2_quota_data = type { i32, i32, i32, i32, i64, i32 }
%struct.kqid = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@GFS2_METATYPE_QC = common dso_local global i32 0, align 4
@GFS2_QCF_USER = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@QDF_CHANGE = common dso_local global i32 0, align 4
@qd_lock = common dso_local global i32 0, align 4
@qd_hash_table = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"found %u quota changes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_init(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.gfs2_quota_change*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.gfs2_quota_data*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.kqid, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.gfs2_inode* @GFS2_I(i32 %26)
  store %struct.gfs2_inode* %27, %struct.gfs2_inode** %4, align 8
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @i_size_read(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = lshr i32 %32, %36
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @gfs2_check_internal_file_size(i32 %40, i32 1, i32 67108864)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %264

46:                                               ; preds = %1
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %49 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul i32 %47, %50
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %55 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DIV_ROUND_UP(i32 %56, i32 64)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @GFP_NOFS, align 4
  %66 = load i32, i32* @__GFP_NOWARN, align 4
  %67 = or i32 %65, %66
  %68 = call i32* @kzalloc(i32 %64, i32 %67)
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %46
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @GFP_NOFS, align 4
  %78 = load i32, i32* @__GFP_ZERO, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PAGE_KERNEL, align 4
  %81 = call i32* @__vmalloc(i32 %76, i32 %79, i32 %80)
  %82 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %83 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %82, i32 0, i32 4
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %75, %46
  %85 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %86 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %2, align 4
  br label %264

91:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %249, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %252

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  store i32 0, i32* %18, align 4
  %100 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %101 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %100, i32 0, i32 1
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @gfs2_extent_map(i32* %101, i32 %102, i32* %18, i32* %12, i32* %13)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %260

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %96
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  %111 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %112 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call %struct.buffer_head* @gfs2_meta_ra(i32 %113, i32 %114, i32 %115)
  store %struct.buffer_head* %116, %struct.buffer_head** %15, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %118 = icmp ne %struct.buffer_head* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %108
  br label %260

120:                                              ; preds = %108
  %121 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %123 = load i32, i32* @GFS2_METATYPE_QC, align 4
  %124 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %121, %struct.buffer_head* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %128 = call i32 @brelse(%struct.buffer_head* %127)
  br label %260

129:                                              ; preds = %120
  %130 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %131 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 4
  %134 = inttoptr i64 %133 to %struct.gfs2_quota_change*
  store %struct.gfs2_quota_change* %134, %struct.gfs2_quota_change** %16, align 8
  store i32 0, i32* %17, align 4
  br label %135

135:                                              ; preds = %237, %129
  %136 = load i32, i32* %17, align 4
  %137 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %138 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ult i32 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %144 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ult i32 %142, %145
  br label %147

147:                                              ; preds = %141, %135
  %148 = phi i1 [ false, %135 ], [ %146, %141 ]
  br i1 %148, label %149, label %242

149:                                              ; preds = %147
  %150 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %16, align 8
  %151 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @be64_to_cpu(i32 %152)
  store i64 %153, i64* %20, align 8
  %154 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %16, align 8
  %155 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @be32_to_cpu(i32 %156)
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* @GFS2_QCF_USER, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i32, i32* @USRQUOTA, align 4
  br label %166

164:                                              ; preds = %149
  %165 = load i32, i32* @GRPQUOTA, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %16, align 8
  %170 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @be32_to_cpu(i32 %171)
  %173 = call i32 @make_kqid(i32* @init_user_ns, i32 %168, i32 %172)
  %174 = getelementptr inbounds %struct.kqid, %struct.kqid* %23, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  %175 = load %struct.gfs2_quota_change*, %struct.gfs2_quota_change** %16, align 8
  %176 = getelementptr inbounds %struct.gfs2_quota_change, %struct.gfs2_quota_change* %175, i32 1
  store %struct.gfs2_quota_change* %176, %struct.gfs2_quota_change** %16, align 8
  %177 = load i64, i64* %20, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %166
  br label %237

180:                                              ; preds = %166
  %181 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %182 = getelementptr inbounds %struct.kqid, %struct.kqid* %23, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @gfs2_qd_hash(%struct.gfs2_sbd* %181, i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %187 = getelementptr inbounds %struct.kqid, %struct.kqid* %23, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call %struct.gfs2_quota_data* @qd_alloc(i32 %185, %struct.gfs2_sbd* %186, i32 %188)
  store %struct.gfs2_quota_data* %189, %struct.gfs2_quota_data** %19, align 8
  %190 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %19, align 8
  %191 = icmp eq %struct.gfs2_quota_data* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %180
  %193 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %194 = call i32 @brelse(%struct.buffer_head* %193)
  br label %260

195:                                              ; preds = %180
  %196 = load i32, i32* @QDF_CHANGE, align 4
  %197 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %19, align 8
  %198 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %197, i32 0, i32 5
  %199 = call i32 @set_bit(i32 %196, i32* %198)
  %200 = load i64, i64* %20, align 8
  %201 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %19, align 8
  %202 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %201, i32 0, i32 4
  store i64 %200, i64* %202, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %19, align 8
  %205 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %19, align 8
  %207 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %206, i32 0, i32 1
  store i32 1, i32* %207, align 4
  %208 = call i32 @spin_lock(i32* @qd_lock)
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %211 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @test_and_set_bit(i32 %209, i32* %212)
  %214 = call i32 @BUG_ON(i32 %213)
  %215 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %19, align 8
  %216 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %215, i32 0, i32 3
  %217 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %218 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %217, i32 0, i32 3
  %219 = call i32 @list_add(i32* %216, i32* %218)
  %220 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %221 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %220, i32 0, i32 2
  %222 = call i32 @atomic_inc(i32* %221)
  %223 = call i32 @spin_unlock(i32* @qd_lock)
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @spin_lock_bucket(i32 %224)
  %226 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %19, align 8
  %227 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %226, i32 0, i32 2
  %228 = load i32*, i32** @qd_hash_table, align 8
  %229 = load i32, i32* %10, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = call i32 @hlist_bl_add_head_rcu(i32* %227, i32* %231)
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @spin_unlock_bucket(i32 %233)
  %235 = load i32, i32* %9, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %195, %179
  %238 = load i32, i32* %17, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %17, align 4
  %240 = load i32, i32* %8, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %135

242:                                              ; preds = %147
  %243 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %244 = call i32 @brelse(%struct.buffer_head* %243)
  %245 = load i32, i32* %12, align 4
  %246 = add i32 %245, 1
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %13, align 4
  br label %249

249:                                              ; preds = %242
  %250 = load i32, i32* %7, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %7, align 4
  br label %92

252:                                              ; preds = %92
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @fs_info(%struct.gfs2_sbd* %256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %255, %252
  store i32 0, i32* %2, align 4
  br label %264

260:                                              ; preds = %192, %126, %119, %106
  %261 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %262 = call i32 @gfs2_quota_cleanup(%struct.gfs2_sbd* %261)
  %263 = load i32, i32* %14, align 4
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %260, %259, %89, %43
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i64 @gfs2_check_internal_file_size(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_extent_map(i32*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.buffer_head* @gfs2_meta_ra(i32, i32, i32) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @make_kqid(i32*, i32, i32) #1

declare dso_local i32 @gfs2_qd_hash(%struct.gfs2_sbd*, i32) #1

declare dso_local %struct.gfs2_quota_data* @qd_alloc(i32, %struct.gfs2_sbd*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_bucket(i32) #1

declare dso_local i32 @hlist_bl_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bucket(i32) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @gfs2_quota_cleanup(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
