; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_sweep_bh_for_rgrps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_sweep_bh_for_rgrps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i64 }
%struct.gfs2_inode = type { i32, i32, %struct.TYPE_11__, i64, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32, i32 }
%struct.gfs2_holder = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_sbd = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_12__* null, align 8
@RES_DINODE = common dso_local global i32 0, align 4
@RES_INDIRECT = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_holder*, %struct.buffer_head*, i64*, i64*, i32, i32*)* @sweep_bh_for_rgrps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sweep_bh_for_rgrps(%struct.gfs2_inode* %0, %struct.gfs2_holder* %1, %struct.buffer_head* %2, i64* %3, i64* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_holder*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.gfs2_sbd*, align 8
  %16 = alloca %struct.gfs2_rgrpd*, align 8
  %17 = alloca %struct.gfs2_trans*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %8, align 8
  store %struct.gfs2_holder* %1, %struct.gfs2_holder** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 2
  %31 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_11__* %30)
  store %struct.gfs2_sbd* %31, %struct.gfs2_sbd** %15, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %32

32:                                               ; preds = %316, %7
  store %struct.gfs2_rgrpd* null, %struct.gfs2_rgrpd** %16, align 8
  %33 = load %struct.gfs2_holder*, %struct.gfs2_holder** %9, align 8
  %34 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.gfs2_holder*, %struct.gfs2_holder** %9, align 8
  %38 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.gfs2_rgrpd* @gfs2_glock2rgrp(i32 %39)
  store %struct.gfs2_rgrpd* %40, %struct.gfs2_rgrpd** %16, align 8
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %42 = load %struct.gfs2_holder*, %struct.gfs2_holder** %9, align 8
  %43 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gfs2_glock_is_locked_by_me(i32 %44)
  %46 = call i32 @gfs2_assert_withdraw(%struct.gfs2_sbd* %41, i32 %45)
  br label %47

47:                                               ; preds = %36, %32
  store i32 0, i32* %19, align 4
  store i64 0, i64* %21, align 8
  store i32 0, i32* %23, align 4
  %48 = load i64*, i64** %11, align 8
  store i64* %48, i64** %18, align 8
  br label %49

49:                                               ; preds = %249, %47
  %50 = load i64*, i64** %18, align 8
  %51 = load i64*, i64** %12, align 8
  %52 = icmp ult i64* %50, %51
  br i1 %52, label %53, label %252

53:                                               ; preds = %49
  %54 = load i64*, i64** %18, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %249

58:                                               ; preds = %53
  %59 = load i64*, i64** %18, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @be64_to_cpu(i64 %60)
  store i64 %61, i64* %20, align 8
  %62 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  %63 = icmp ne %struct.gfs2_rgrpd* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  %66 = load i64, i64* %20, align 8
  %67 = call i32 @rgrp_contains_block(%struct.gfs2_rgrpd* %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  br label %249

72:                                               ; preds = %64
  br label %114

73:                                               ; preds = %58
  %74 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %75 = load i64, i64* %20, align 8
  %76 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %74, i64 %75, i32 1)
  store %struct.gfs2_rgrpd* %76, %struct.gfs2_rgrpd** %16, align 8
  %77 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  %78 = icmp ne %struct.gfs2_rgrpd* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %24, align 4
  br label %321

86:                                               ; preds = %73
  %87 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  %88 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %91 = load %struct.gfs2_holder*, %struct.gfs2_holder** %9, align 8
  %92 = call i32 @gfs2_glock_nq_init(i32 %89, i32 %90, i32 0, %struct.gfs2_holder* %91)
  store i32 %92, i32* %24, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %321

96:                                               ; preds = %86
  %97 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %98 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %97, i32 0, i32 4
  %99 = call i64 @gfs2_rs_active(%struct.TYPE_10__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  %103 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %104 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %106, align 8
  %108 = icmp eq %struct.gfs2_rgrpd* %102, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %111 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %110, i32 0, i32 4
  %112 = call i32 @gfs2_rs_deltree(%struct.TYPE_10__* %111)
  br label %113

113:                                              ; preds = %109, %101, %96
  br label %114

114:                                              ; preds = %113, %72
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load %struct.gfs2_trans*, %struct.gfs2_trans** %116, align 8
  %118 = icmp eq %struct.gfs2_trans* %117, null
  br i1 %118, label %119, label %190

119:                                              ; preds = %114
  %120 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  %121 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RES_DINODE, align 4
  %124 = add i32 %122, %123
  %125 = load i32, i32* @RES_INDIRECT, align 4
  %126 = add i32 %124, %125
  store i32 %126, i32* %26, align 4
  %127 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %128 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %127, i32 0, i32 2
  %129 = call i64 @gfs2_get_inode_blocks(%struct.TYPE_11__* %128)
  store i64 %129, i64* %22, align 8
  %130 = load i64, i64* %22, align 8
  %131 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %132 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %131, i32 0, i32 0
  %133 = call i64 @atomic_read(i32* %132)
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %119
  %136 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %137 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %136, i32 0, i32 0
  %138 = call i64 @atomic_read(i32* %137)
  %139 = load i32, i32* %26, align 4
  %140 = zext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %26, align 4
  br label %149

143:                                              ; preds = %119
  %144 = load i64, i64* %22, align 8
  %145 = load i32, i32* %26, align 4
  %146 = zext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %26, align 4
  br label %149

149:                                              ; preds = %143, %135
  %150 = load i32, i32* %26, align 4
  store i32 %150, i32* %27, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load i64*, i64** %12, align 8
  %155 = load i64*, i64** %11, align 8
  %156 = ptrtoint i64* %154 to i64
  %157 = ptrtoint i64* %155 to i64
  %158 = sub i64 %156, %157
  %159 = sdiv exact i64 %158, 8
  %160 = load i32, i32* %27, align 4
  %161 = zext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %27, align 4
  br label %178

164:                                              ; preds = %149
  %165 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %166 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %171 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %27, align 4
  %174 = zext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %27, align 4
  br label %177

177:                                              ; preds = %169, %164
  br label %178

178:                                              ; preds = %177, %153
  %179 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %180 = load i32, i32* %26, align 4
  %181 = load i32, i32* %27, align 4
  %182 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %179, i32 %180, i32 %181)
  store i32 %182, i32* %24, align 4
  %183 = load i32, i32* %24, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %272

186:                                              ; preds = %178
  %187 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %188 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %187, i32 0, i32 0
  %189 = call i32 @down_write(i32* %188)
  br label %190

190:                                              ; preds = %186, %114
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load %struct.gfs2_trans*, %struct.gfs2_trans** %192, align 8
  store %struct.gfs2_trans* %193, %struct.gfs2_trans** %17, align 8
  %194 = load %struct.gfs2_trans*, %struct.gfs2_trans** %17, align 8
  %195 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @RES_STATFS, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i64, i64* @RES_QUOTA, align 8
  %200 = add nsw i64 %198, %199
  %201 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %202 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %201, i32 0, i32 0
  %203 = call i64 @atomic_read(i32* %202)
  %204 = icmp sge i64 %200, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %190
  %206 = load i32, i32* %19, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %25, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %252

211:                                              ; preds = %205
  br label %272

212:                                              ; preds = %190
  %213 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %214 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %217 = call i32 @gfs2_trans_add_meta(i32 %215, %struct.buffer_head* %216)
  store i32 1, i32* %25, align 4
  %218 = load i64*, i64** %18, align 8
  store i64 0, i64* %218, align 8
  %219 = load i64, i64* %21, align 8
  %220 = load i32, i32* %23, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = load i64, i64* %20, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %212
  %226 = load i32, i32* %23, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %23, align 4
  br label %249

228:                                              ; preds = %212
  %229 = load i64, i64* %21, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %228
  %232 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %233 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  %234 = load i64, i64* %21, align 8
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @__gfs2_free_blocks(%struct.gfs2_inode* %232, %struct.gfs2_rgrpd* %233, i64 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %23, align 4
  %239 = load i32*, i32** %14, align 8
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, %238
  store i32 %241, i32* %239, align 4
  %242 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %243 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %242, i32 0, i32 2
  %244 = load i32, i32* %23, align 4
  %245 = sub nsw i32 0, %244
  %246 = call i32 @gfs2_add_inode_blocks(%struct.TYPE_11__* %243, i32 %245)
  br label %247

247:                                              ; preds = %231, %228
  %248 = load i64, i64* %20, align 8
  store i64 %248, i64* %21, align 8
  store i32 1, i32* %23, align 4
  br label %249

249:                                              ; preds = %247, %225, %69, %57
  %250 = load i64*, i64** %18, align 8
  %251 = getelementptr inbounds i64, i64* %250, i32 1
  store i64* %251, i64** %18, align 8
  br label %49

252:                                              ; preds = %210, %49
  %253 = load i64, i64* %21, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %271

255:                                              ; preds = %252
  %256 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %257 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %16, align 8
  %258 = load i64, i64* %21, align 8
  %259 = load i32, i32* %23, align 4
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @__gfs2_free_blocks(%struct.gfs2_inode* %256, %struct.gfs2_rgrpd* %257, i64 %258, i32 %259, i32 %260)
  %262 = load i32, i32* %23, align 4
  %263 = load i32*, i32** %14, align 8
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, %262
  store i32 %265, i32* %263, align 4
  %266 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %267 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %266, i32 0, i32 2
  %268 = load i32, i32* %23, align 4
  %269 = sub nsw i32 0, %268
  %270 = call i32 @gfs2_add_inode_blocks(%struct.TYPE_11__* %267, i32 %269)
  br label %271

271:                                              ; preds = %255, %252
  br label %272

272:                                              ; preds = %271, %211, %185
  %273 = load i32, i32* %24, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %320, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %19, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %320

278:                                              ; preds = %275
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = load %struct.gfs2_trans*, %struct.gfs2_trans** %280, align 8
  %282 = icmp ne %struct.gfs2_trans* %281, null
  br i1 %282, label %283, label %316

283:                                              ; preds = %278
  %284 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %285 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %284, %struct.buffer_head** %28)
  store i32 %285, i32* %24, align 4
  %286 = load i32, i32* %24, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  br label %321

289:                                              ; preds = %283
  %290 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %291 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %290, i32 0, i32 2
  %292 = call i32 @current_time(%struct.TYPE_11__* %291)
  %293 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %294 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  store i32 %292, i32* %295, align 8
  %296 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %297 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  store i32 %292, i32* %298, align 4
  %299 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %300 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %303 = call i32 @gfs2_trans_add_meta(i32 %301, %struct.buffer_head* %302)
  %304 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %305 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %306 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %304, i32 %307)
  %309 = load %struct.buffer_head*, %struct.buffer_head** %28, align 8
  %310 = call i32 @brelse(%struct.buffer_head* %309)
  %311 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %312 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %311, i32 0, i32 0
  %313 = call i32 @up_write(i32* %312)
  %314 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  %315 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %314)
  store i32 0, i32* %25, align 4
  br label %316

316:                                              ; preds = %289, %278
  %317 = load %struct.gfs2_holder*, %struct.gfs2_holder** %9, align 8
  %318 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %317)
  %319 = call i32 (...) @cond_resched()
  br label %32

320:                                              ; preds = %275, %272
  br label %321

321:                                              ; preds = %320, %288, %95, %83
  %322 = load i32, i32* %24, align 4
  ret i32 %322
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_11__*) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_glock2rgrp(i32) #1

declare dso_local i32 @gfs2_assert_withdraw(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_glock_is_locked_by_me(i32) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i32 @rgrp_contains_block(%struct.gfs2_rgrpd*, i64) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i64 @gfs2_rs_active(%struct.TYPE_10__*) #1

declare dso_local i32 @gfs2_rs_deltree(%struct.TYPE_10__*) #1

declare dso_local i64 @gfs2_get_inode_blocks(%struct.TYPE_11__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @__gfs2_free_blocks(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i64, i32, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @current_time(%struct.TYPE_11__*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
